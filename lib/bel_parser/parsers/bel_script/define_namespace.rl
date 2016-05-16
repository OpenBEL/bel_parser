# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';

  action add_name {
    $stderr.puts "DEFINE_NAMESPACE add_name"
    name = @buffers.delete(:ident)
    @buffers[:namespace_definition_name] = name
  }

  action add_string_value {
    $stderr.puts "DEFINE_NAMESPACE add_string_value"
    string_node = @buffers.delete(:string)
    leaf = domain(url(string_node))
    leaf.complete = string_node.complete
    @buffers[:namespace_definition_domain] = leaf
  }

  action add_url_domain {
    $stderr.puts "DEFINE_NAMESPACE add_url_domain"
    @url_domain = true
  }

  action define_namespace_end {
    $stderr.puts "DEFINE_NAMESPACE define_namespace_end"
    namespace_definition_node = namespace_definition()
    domain = @buffers.delete(:namespace_definition_domain)
    unless domain.nil?
      namespace_definition_node <<= domain
      namespace_definition_node.complete = domain.complete
    end
    @buffers[:namespace_definition] = namespace_definition_node
  }

  action yield_define_namespace {
    $stderr.puts "DEFINE_NAMESPACE yield_define_namespace"
    yield @buffers[:namespace_definition]
  }

  action define_namespace_node_eof {
    $stderr.puts "DEFINE_NAMESPACE define_namespace_node_eof"
    leaf = url()
    string_node = @buffers.delete(:string)
    unless string_node.nil?
      leaf <<= string_node
      leaf.complete = string_node.complete
    end
    domain_node = domain(leaf)
    domain_node.complete = leaf.complete
    namespace_definition_node = namespace_definition(domain_node)
    namespace_definition_node.complete = domain_node.complete
    yield namespace_definition_node
  }

  string_value =
    a_string
    %add_string_value
    ;

  url_domain =
    KW_URL
    %add_url_domain
    ;

  define_namespace_node :=
    DEFINE_NAMESPACE
    SP+
    an_ident
    %add_name
    SP+
    KW_AS
    SP+
    url_domain
    SP+
    string_value
    @eof(define_namespace_node_eof)
    %define_namespace_end
    %yield_define_namespace
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'

module BELParser
  module Parsers
    module BELScript
      module DefineNamespace

        class << self

          MAX_LENGTH = 1024 * 128 # 128K

          def parse(content)
            return nil unless content

            Parser.new(content).each do |obj|
              yield obj
            end
          end
        end

        private

        class Parser
          include Enumerable
          include BELParser::Parsers::Buffer
          include BELParser::Parsers::AST::Sexp

          def initialize(content)
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers =    {}
            @incomplete = {}
            stack       = []
            data        = @content.unpack('C*')
            p           = 0
            pe          = data.length
            eof         = data.length

      # begin: ragel
            %% write init;
            %% write exec;
      # end: ragel
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  $stdin.each_line do |line|
    BELParser::Parsers::BELScript::DefineNamespace.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
