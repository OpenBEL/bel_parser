require_relative 'syntax'
require_relative 'semantics'
require_relative 'apply_default_namespace'
require_relative 'apply_namespace_encoding'

module BELParser
  module Language
    # ExpressionValidator validates the syntax and semantics of BEL expressions
    # when supplied a {BELParser::Language::Specification} and Hash of
    # namespaces.
    class ExpressionValidator
      def initialize(spec, namespaces, uri_reader, url_reader)
        @spec                         = spec
        @namespaces                   = namespaces || {}
        @syntax_functions             = Syntax.syntax_functions
        @semantics_functions          = Semantics.semantics_functions
        @default_namespace_transform  =
          ApplyDefaultNamespace.new(@spec, @namespaces, uri_reader, url_reader)
        @namespace_encoding_transform =
          ApplyNamespaceEncoding.new(@spec, @namespaces, uri_reader, url_reader)
      end

      # Validate the syntax and semantics of
      # {BELParser::Parsers::AST::Node expression_node}.
      #
      # @param  [BELParser::Parsers::AST::Node] expression_node to validate
      # @return [BELParser::Language::Syntax::SyntaxResult] syntax results
      def validate(expression_node)
        if @spec.version >= "2.0"
          expression_node = @default_namespace_transform.process(expression_node)
        end

        @namespace_encoding_transform.process(expression_node)

        case expression_node
        when BELParser::Parsers::AST::SimpleStatement
          SimpleStatementResult.new(
            expression_node,
            validate(expression_node.statement.subject.term),
            validate(expression_node.statement.object.child),
            syntax(expression_node),
            semantics(expression_node))
        when BELParser::Parsers::AST::ObservedTerm
          ObservedTermResult.new(
            expression_node,
            validate(expression_node.statement.subject.term),
            syntax(expression_node),
            semantics(expression_node))
        when BELParser::Parsers::AST::NestedStatement
          NestedStatementResult.new(
            expression_node,
            validate(expression_node.statement.subject.term),
            validate(expression_node.statement.object.child),
            syntax(expression_node),
            semantics(expression_node))
        when BELParser::Parsers::AST::Statement
          SimpleStatementResult.new(
            expression_node,
            validate(expression_node.subject.term),
            validate(expression_node.object.child),
            syntax(expression_node),
            semantics(expression_node))
        when BELParser::Parsers::AST::Term
          TermResult.new(
            expression_node,
            syntax(expression_node),
            semantics(expression_node))
        when BELParser::Parsers::AST::Parameter
          ParameterResult.new(
            expression_node,
            syntax(expression_node),
            semantics(expression_node))
        else
          nil
        end
      end

      private

      def syntax(expression_node)
        expression_node.traverse.flat_map do |node|
          @syntax_functions.map { |func| func.map(node, @spec, @namespaces) }
        end.compact
      end

      def semantics(expression_node)
        expression_node.traverse.flat_map do |node|
          @semantics_functions.flat_map { |func| func.map(node, @spec, @namespaces) }
        end.compact
      end

      module Result
        def valid?
          valid_syntax? && valid_semantics?
        end

        def valid_syntax?
          @syntax_results.empty?
        end

        def valid_semantics?
          @semantics_results.empty?
        end

        def valid_signature_mappings
          @semantics_results
            .select { |res|
              res.is_a?(Semantics::SignatureMappingSuccess)
            }
            .uniq
        end

        def invalid_signature_mappings
          @semantics_results
            .select { |res|
              res.is_a?(Semantics::SignatureMappingWarning)
            }
        end

        def detail
          ''
        end

        def to_s
          <<-HEADER.gsub(/^ {12}/, '')
            Syntax:    #{valid_syntax?    ? 'Valid' : 'Invalid'}
            Semantics: #{valid_semantics? ? 'Valid' : 'Invalid'}

            #{syntax_errors_s}#{semantics_errors_s}#{detail}
          HEADER
        end

        private

        def syntax_errors_s
          return nil if @syntax_results.empty?

          report = "Syntax errors\n"
          @syntax_results.each { |res| report += "#{res}\n" }
          report
        end

        def semantics_errors_s
          return nil if @semantics_results.nil? || @semantics_results.empty?

          report = "Semantic errors\n"
          @semantics_results.each { |res| report += "#{res}\n" }
          report
        end
      end

      class ParameterResult
        attr_reader :syntax_results, :semantics_results
        include Result

        def initialize(expression_node, syntax_results, semantics_results)
          @expression_node   = expression_node
          @syntax_results    = syntax_results
          @semantics_results = semantics_results
        end

        def valid_signature_mappings
          nil
        end

        def invalid_signature_mappings
          nil
        end
      end

      class TermResult
        attr_reader :syntax_results, :semantics_results
        include Result

        def initialize(expression_node, syntax_results, semantics_results)
          @expression_node   = expression_node
          @syntax_results    = syntax_results
          @semantics_results = semantics_results
        end

        def valid_semantics?
          @semantics_results.any? do |res|
            res.is_a?(Semantics::SignatureMappingSuccess) && res.expression_node == @expression_node
          end
        end

        def detail
          report = "Valid signatures\n"
          valid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Invalid signatures\n"
          invalid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report
        end
      end

      class ObservedTermResult
        attr_reader :syntax_results, :semantics_results
        include Result

        def initialize(expression_node, subject_result, syntax, semantics)
          @expression_node   = expression_node
          @subject_result    = subject_result
          @syntax_results    = syntax
          @semantics_results =
            semantics.reject! do |res|
              res.is_a?(Semantics::SignatureMappingWarning) ||
              res.is_a?(Semantics::SignatureMappingSuccess)
            end
        end

        def valid_syntax?
          @subject_result.valid_syntax? && @syntax_results.empty?
        end

        def valid_semantics?
          @subject_result.valid_semantics? && @semantics_results.empty?
        end

        def subject_valid?
          valid?
        end

        def detail
          report = "Subject term - Valid signatures\n"
          @subject_result.valid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Subject term - Invalid signatures\n"
          @subject_result.invalid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report
        end
      end

      class SimpleStatementResult
        attr_reader :syntax_results, :semantics_results
        include Result

        def initialize(expression_node, subject_result, object_result, syntax, semantics)
          @expression_node   = expression_node
          @subject_result    = subject_result
          @object_result     = object_result
          @syntax_results    = syntax
          @semantics_results =
            semantics.reject! do |res|
              res.is_a?(Semantics::SignatureMappingWarning) ||
              res.is_a?(Semantics::SignatureMappingSuccess)
            end
        end

        def valid?
          valid_syntax? && valid_semantics?
        end

        def valid_syntax?
          @subject_result.valid_syntax? &&
            @object_result.valid_syntax? &&
            @syntax_results.empty?
        end

        def valid_semantics?
          @subject_result.valid_semantics? &&
            @object_result.valid_semantics? &&
            @semantics_results.empty?
        end

        def subject_valid?
          @subject_result.valid?
        end

        def object_valid?
          @object_result.valid?
        end

        def valid_subject_signatures
          @subject_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingSuccess)
            end.uniq
        end

        def invalid_subject_signatures
          @subject_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingWarning)
            end
        end

        def valid_object_signatures
          @object_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingSuccess)
            end.uniq
        end

        def invalid_object_signatures
          @object_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingWarning)
            end
        end

        def detail
          report = "Subject term - Valid signatures\n"
          @subject_result.valid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Subject term - Invalid signatures\n"
          @subject_result.invalid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Object term - Valid signatures\n"
          @object_result.valid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Object term - Invalid signatures\n"
          @object_result.invalid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report
        end
      end

      class NestedStatementResult
        attr_reader :syntax_results, :semantics_results
        include Result

        def initialize(expression_node, subject_result, object_result, syntax, semantics)
          @expression_node   = expression_node
          @subject_result    = subject_result
          @object_result     = object_result
          @syntax_results    = syntax
          @semantics_results =
            semantics.reject! do |res|
              res.is_a?(Semantics::SignatureMappingWarning) ||
              res.is_a?(Semantics::SignatureMappingSuccess)
            end
        end

        def valid?
          valid_syntax? && valid_semantics?
        end

        def valid_syntax?
          @subject_result.valid_syntax? &&
            @object_result.valid_syntax? &&
            @syntax_results.empty?
        end

        def valid_semantics?
          @subject_result.valid_semantics? &&
            @object_result.valid_semantics? &&
            @semantics_results.empty?
        end

        def subject_valid?
          @subject_result.valid?
        end

        def object_valid?
          @object_result.valid?
        end

        def valid_subject_signatures
          @subject_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingSuccess)
            end.uniq
        end

        def invalid_subject_signatures
          @subject_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingWarning)
            end
        end

        def valid_object_signatures
          @object_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingSuccess)
            end.uniq
        end

        def invalid_object_signatures
          @object_result.semantics_results
            .select do |res|
              res.is_a?(Semantics::SignatureMappingWarning)
            end
        end

        def to_s
          <<-HEADER.gsub(/^ {12}/, '')
            Syntax:    #{valid_syntax?    ? 'Valid' : 'Invalid'}
            Semantics: #{valid_semantics? ? 'Valid' : 'Invalid'}

            #{syntax_errors_s}#{semantics_errors_s}#{detail}
          HEADER
        end

        def detail
          report = "Subject term - Valid signatures\n"
          @subject_result.valid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += "Subject term - Invalid signatures\n"
          @subject_result.invalid_signature_mappings.each do |mapping|
            report += "  #{mapping.signature}\n"
            mapping.results.each do |reason|
              report += "    #{reason}\n"
            end
          end
          report += "\n"

          report += @object_result.detail
          report
        end
      end
    end
  end
end
