require          'concurrent/hash'

require_relative '../parsers/common'
require_relative '../parsers/expression'
require_relative '../parsers/bel_script'

require_relative '../ast_filter'
require_relative '../ast_generator'

require_relative 'state_function'
require_relative '../language/syntax_function'

module BELParser
  module Script
    class Validator
      include BELParser::Parsers::Common
      include BELParser::Parsers::Expression
      include BELParser::Parsers::BELScript

      FILTER = BELParser::ASTFilter.new(
        :simple_statement,
        :observed_term,
        :nested_statement,
        :annotation_definition,
        :namespace_definition,
        :set,
        :document_property,
        :unset,
        :blank_line,
        :comment_line
      )

      def initialize
        @script_context = Concurrent::Hash.new

        Validator.require_script_path
        @state_functions  = Validator.state_constants(State)
        @syntax_functions = Validator.syntax_constants(Syntax)
      end

      def each(io)
        if block_given?
          filtered_ast = FILTER.each(BELParser::ASTGenerator.new.each(io))
          filtered_ast.each do |results|
            line_number, line, ast_results = results
            ast_node                       = ast_results.first

            syntax_results =
              @syntax_functions.map do |func|
                func.map(ast_node, @script_context)
              end.compact

            if syntax_results.empty?
              @state_functions.each do |func|
                func.consume(ast_node, @script_context)
              end
            end

            yield [line_number, line, ast_node, syntax_results, @script_context]
          end
        else
          enum_for(:each, io)
        end
      end

      def self.require_script_path
        base_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR
        ['state', 'syntax'].each do |set|
          Dir[File.join(base_path, set, '*.rb')]
            .each do |ruby_file|
              ruby_file.sub!(/^#{Regexp.escape(base_path)}/, '')
              require_relative ruby_file
            end
        end
      end

      def self.state_constants(mod)
        mod.constants.collect do |symbol|
          const = mod.const_get(symbol)
          const if const.respond_to?(:consume)
        end.compact
      end

      def self.syntax_constants(mod)
        mod.constants.collect do |symbol|
          const = mod.const_get(symbol)
          const if const.respond_to?(:map)
        end.compact
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Script::Validator.new.each($stdin) do |(line_number, line, ast, syntax_results, state)|
    puts "#{line_number}: #{line}"
    puts ast.to_s(1)
    unless syntax_results.empty?
      puts "Syntax errors:"
      syntax_results.each do |res|
        puts "  #{res}"
      end
    end
    puts "State:"
    state.each do |key, value|
      puts "  #{key}: #{value}"
    end
  end
end
