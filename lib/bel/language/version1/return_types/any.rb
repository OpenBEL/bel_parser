require 'English'

module BEL
  module Language
    module Version1
      module ReturnTypes
        # The any type.
        class Any
          # Return the {Symbol} value.
          #
          # @note This method should be overridden in subclasses.
          def self.to_sym
            raise_not_implemented(__method__) if self != Any
            :*
          end

          # Returns +true+ if I am a subtype of +other_return_type+; otherwise
          # return +false+.
          #
          # @param  [Class]   other_return_type to compare to
          # @return [Boolean] +true+ if I am a subtype; +false+ if not
          def self.subtype_of?(other_return_type)
            self <= other_return_type
          end

          # Retrieve my immediate subtypes.
          #
          # @return [Array<Class>] my immediate subtypes
          def self.subtypes
            (@subtypes ||= []).freeze
          end

          # Retrieve my transitive subtypes.
          #
          # @return [Array<Class>] my transitive subtypes
          def self.transitive_subtypes
            transitive_subtypes =
              (@subtypes ||= []).flat_map do |subtype|
                [subtype, subtype.subtypes]
              end.flatten
            transitive_subtypes << self
            transitive_subtypes.freeze
          end

          # Inherited hook overridden to keep track of descendants. This method
          # is inherited by all descendants.
          #
          # @param [Class] cls the subclass that is inheriting me
          # @see .subtypes
          def self.inherited(cls)
            (@subtypes ||= []) << cls
          end
          private_class_method

          # Raise {NotImplementedError} for +method+. Alters the exception
          # backtrace to exclude this method.
          #
          # @param [#to_s] the method name
          # @raise [NotImplementedError] for +method+
          def self.raise_not_implemented(method)
            msg = "#{name} must implement the #{method} method"
            raise NotImplementedError, msg
          rescue StandardError
            raise(
              $ERROR_INFO.class,
              $ERROR_INFO.message,
              $ERROR_INFO.backtrace[1..-1])
          end
          private_class_method
        end
      end
    end
  end
end
