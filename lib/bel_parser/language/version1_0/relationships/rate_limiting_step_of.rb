require_relative '../../version1_0'
require_relative '../../relationship'

module BELParser
  module Language
    module Version1_0
      module Relationships
        # RateLimitingStepOf:  +A rateLimitingStepOf B+ -  For process,
        # activity, or transformation term A and process term B, +A
        # rateLimitingStepOf B+ indicates +A subProcessOf B+ and +A ->
        # B+. For example, the catalytic activity of HMG CoA reductase
        # is a rate-limiting step for cholesterol biosynthesis: <pre>
        # <code> cat(p(HGNC:HMGCR)) rateLimitingStepOf\ bp(GO:"cholesterol
        # biosynthetic process") </code> </pre>
        class RateLimitingStepOf
          extend Relationship

          SHORT       = :rateLimitingStepOf
          LONG        = :rateLimitingStepOf
          DESCRIPTION = ' +A rateLimitingStepOf B+ -  For process, activity, or transformation term A and process term B, +A rateLimitingStepOf B+ indicates +A subProcessOf B+ and +A -> B+. For example, the catalytic activity of HMG CoA reductase is a rate-limiting step for cholesterol biosynthesis: <pre> <code> cat(p(HGNC:HMGCR)) rateLimitingStepOf\ bp(GO:"cholesterol biosynthetic process") </code> </pre>'.freeze

          def self.short
            SHORT
          end

          def self.long
            LONG
          end

          def self.description
            DESCRIPTION
          end
        end
      end
    end
  end
end
