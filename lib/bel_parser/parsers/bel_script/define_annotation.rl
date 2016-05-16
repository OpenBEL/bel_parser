# begin: ragel
=begin
%%{
  machine bel;

  include 'common.rl';
  include 'identifier.rl';
  include 'string.rl';
  include 'list.rl';

  action add_name {
    trace('DEFINE_ANNOTATION add_name')
    name = @buffers.delete(:ident)
    @buffers[:annotation_definition_name] = name
  }

  action add_string_value {
    trace('DEFINE_ANNOTATION add_string_value')
    string_node = @buffers.delete(:string)
    if @url_domain
      leaf = domain(url(string_node))
      leaf.complete = string_node.complete
    elsif @pattern_domain
      leaf = domain(pattern(string_node))
      leaf.complete = string_node.complete
    else
      leaf = domain(string_node)
      # defined as list, given string
      leaf.complete = false
    end
    @buffers[:annotation_definition_domain] = leaf
  }

  action add_list_value {
    trace('DEFINE_ANNOTATION add_list_value')
    list_node = @buffers.delete(:list)
    if @url_domain
      leaf = domain(url(list_node))
      # defined as url, given list
      leaf.completed = false
    elsif @pattern_domain
      leaf = domain(pattern(list_node))
      # defined as url, given pattern
      leaf.complete = false
    else
      leaf = domain(list_node)
      leaf.complete = list_node.complete
    end
    @buffers[:annotation_definition_domain] = leaf
  }

  action add_list_domain {
    trace('DEFINE_ANNOTATION add_list_domain')
    @list_domain = true
  }

  action add_url_domain {
    trace('DEFINE_ANNOTATION add_url_domain')
    @url_domain = true
  }

  action add_pattern_domain {
    trace('DEFINE_ANNOTATION add_pattern_domain')
    @pattern_domain = true
  }

  action define_annotation_end {
    trace('DEFINE_ANNOTATION define_annotation_end')
    annotation_definition_node = annotation_definition()
    domain = @buffers.delete(:annotation_definition_domain)
    unless domain.nil?
      annotation_definition_node <<= domain
      annotation_definition_node.complete = domain.complete
    end
    @buffers[:annotation_definition] = annotation_definition_node
  }

  action yield_define_annotation {
    trace('DEFINE_ANNOTATION yield_define_annotation')
    yield @buffers[:annotation_definition]
  }

  action define_annotation_node_eof {
    trace('DEFINE_ANNOTATION define_annotation_node_eof')
    annotation_definition_node = annotation_definition()
    if @url_domain
      domain_node = domain(url())
    elsif @pattern_domain
      domain_node = domain(pattern())
    else
      domain_node = domain()
    end

    domain_node.complete = false
    list_node = @buffers.delete(:list)
    unless list_node.nil?
      domain_node <<= list_node
      domain_node.complete = list_node.complete
    end
    string_node = @buffers.delete(:string)
    unless string_node.nil?
      domain_node <<= string_node
      domain_node.complete = string_node.complete
    end
    annotation_definition_node <<= domain_node
    annotation_definition_node.complete = domain_node.complete
    yield annotation_definition_node
  }

  string_value =
    a_string
    %add_string_value
    ;

  list_value =
    a_list
    %add_list_value
    ;

  value =
    string_value |
    list_value
    ;

  list_domain =
    KW_LIST
    %add_list_domain
    ;

  url_domain =
    KW_URL
    %add_url_domain
    ;

  pattern_domain =
    KW_PATTERN
    %add_pattern_domain
    ;

  domain =
    list_domain |
    url_domain |
    pattern_domain
    ;

  define_annotation_node :=
    DEFINE_ANNOTATION
    SP+
    an_ident
    %add_name
    SP+
    KW_AS
    SP+
    domain
    SP+
    value
    @eof(define_annotation_node_eof)
    %define_annotation_end
    %yield_define_annotation
    ;
}%%
=end
# end: ragel

require_relative '../ast/node'
require_relative '../mixin/buffer'
require_relative '../nonblocking_io_wrapper'
require_relative '../tracer'

module BELParser
  module Parsers
    module BELScript
      module DefineAnnotation

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
          include BELParser::Parsers::Tracer

          def initialize(content)
            @content = content
      # begin: ragel
            %% write data;
      # end: ragel
          end

          def each
            @buffers = {}
            @incomplete = {}
            @list_domain = false
            @url_domain = false
            @pattern_domain = false
            data     = @content.unpack('C*')
            p        = 0
            pe       = data.length
            eof      = data.length

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
    BELParser::Parsers::BELScript::DefineAnnotation.parse(line) { |obj|
      puts obj.inspect
    }
  end
end

# vim: ft=ruby ts=2 sw=2:
# encoding: utf-8
