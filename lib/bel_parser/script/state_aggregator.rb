module BELParser
  module Script
    # StateAggregator aggregates BEL Script state for each
    # {BELParser::Parsers::AST::Node AST node} it processes.
    class StateAggregator

      STATE_PATH = 'state'

      def initialize(ast_enum, options = {})
        @ast_enum        = ast_enum
        @script_context  = {}.merge(options)

        StateAggregator.require_script_path
        @state_functions = StateAggregator.state_constants(State)
      end

      def each
        if block_given?
          @ast_enum.each do |(line_number, line, ast_node)|
            ast_node.traverse.each do |node|
              @state_functions.each do |func|
                func.consume(node, @script_context)
              end
            end
            yield [line_number, line, ast_node, @script_context]
          end
        else
          enum_for(:each)
        end
      end

      def self.require_script_path
        base_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR
        Dir[File.join(base_path, STATE_PATH, '*.rb')]
          .each do |ruby_file|
            ruby_file.sub!(/^#{Regexp.escape(base_path)}/, '')
            require_relative ruby_file
          end
      end

      def self.state_constants(mod)
        mod.constants.collect do |symbol|
          const = mod.const_get(symbol)
          const if const.respond_to?(:consume)
        end.compact
      end
    end
  end
end
