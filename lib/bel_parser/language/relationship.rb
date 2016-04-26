module BELParser
  module Language
    # Relationship allows you to describe the type of BEL Relationship.
    #
    # BEL Relationships represent an interaction between a subject and object
    # in the BEL expression.
    module Relationship
      def short
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def long
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def description
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      # Indicates whether this relationship is deprecated. Override in your
      # relationship to mark as deprecated.
      #
      # @return [Boolean] false
      def deprecated?
        false
      end

      def causal?
        false
      end

      def correlative?
        false
      end

      def decreasing?
        false
      end

      def direct?
        false
      end

      def directed?
        false
      end

      def genomic?
        false
      end

      def increasing?
        false
      end

      def indirect?
        false
      end

      def injected?
        false
      end

      def listable?
        false
      end

      def self?
        false
      end

      def ==(other)
        return true if equal?(other)
        return false if other.nil?
        short == other || long == other
      end

      def to_sym(form = :short)
        value = _form_value(form)
        return nil unless value
        value.to_s
      end

      def to_s(form = :short)
        value = _form_value(form)
        return nil unless value
        value.to_s
      end

      private

      def _form_value(form = :short)
        case form
        when :short
          short
        when :long
          long
        end
      end
    end
  end
end
