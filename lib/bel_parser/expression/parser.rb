require_relative '../ast_generator'
require_relative '../parsers/common'
require_relative '../parsers/expression'

module BELParser
  module Expression
    # Parser for BEL Expression.
    class Parser
      def parse(input, &block)
        case input
        when String
          parse_string(input, &block)
        when Array
          parse_array(input, &block)
        when IO, StringIO
          parse_io(input, &block)
        else
          raise ArgumentError,
            %(expected "input" to be one of String, Array, IO: #{input.class})
        end
      end

      protected

      def parse_string(string)
        filter = Filter.new(
          BELParser::ASTGenerator.new(StringIO.new(string)))
        num, line, results = filter.each.first
        if block_given?
          yield results
          nil
        else
          results
        end
      end

      def parse_array(array)
        if block_given?
          array.each do |expression|
            yield parse_string(expression.to_s)
          end
          nil
        else
          array.map do |expression|
            parse_string(expression.to_s)
          end
        end
      end

      def parse_io(io)
        if block_given?
          filter = Filter.new(BELParser::ASTGenerator.new(io))
          filter.each do |(num, line, results)|
            yield results
          end
          nil
        else
          enum_for(:parse_io, io)
        end
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Expression::Parser.new.each($stdin) do |(line_number, line, res)|
    puts "#{line_number}: #{line}"
    res.each do |ast|
      puts ast.to_s(1)
    end
  end
end
