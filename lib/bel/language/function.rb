module BEL
  module Language
    # Function allows you to describe the type of BEL Term.
    #
    # BEL Terms are composed of BEL Functions and entity definitions
    # referenced using BEL Namespace identifiers. Each BEL Term represents
    # either an abundance of a biological entity, the abundance of human AKT1
    # for example, or a biological process such as cardiomyopathy.
    module Function
      def short
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def long
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def return_type
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def description
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def signatures
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def hash
        [short, long].hash
      end

      def ==(other)
        return false if other.nil?
        short == other.short && long == other.long
      end

      alias :eql? ==

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
