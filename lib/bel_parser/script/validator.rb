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
    # Validator defines a BEL Script syntax validator. This validator
    # expects to receive the BEL Script state for each node. This is
    # accomplished by initializing with a {StateAggregator} that this
    # will enumerate.
    class Validator

      def initialize(state_aggregator)
        @state_aggregator = state_aggregator

        Validator.require_script_path
        @syntax_functions = Validator.syntax_constants(Syntax)
      end

      def each
        if block_given?
          @state_aggregator.each do |(line_number, line, ast_node, state)|
            ast_node.traverse.flat_map do |node|
              @syntax_functions.flat_map do |func|
                func.map(node, state)
              end
            end.compact.each do |syntax_result|
              ast_node.add_syntax_error(syntax_result)
            end

            yield [line_number, line, ast_node, state]
          end
        else
          enum_for(:each)
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

      def self.syntax_constants(mod)
        mod.constants.collect do |symbol|
          const = mod.const_get(symbol)
          const if const.respond_to?(:map)
        end.compact
      end
    end
  end
end
