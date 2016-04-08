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

      def ===(other)
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
