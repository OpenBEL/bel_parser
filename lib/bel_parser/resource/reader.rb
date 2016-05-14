module BELParser
  module Resource
    # Reader represents the API for a reader of resource data.
    module Reader
      def self.assert_reader(reader, var_name)
        return unless reader
        not_impl_methods =
          Reader.instance_methods.reject do |method|
            reader.respond_to?(method)
          end
        unless not_impl_methods.empty?
          raise(
            ArgumentError,
            "#{var_name} does not respond to #{not_impl_methods.join(', ')}.")
        end
      end

      def retrieve_resource(resource_identifier)
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def retrieve_value_from_resource(resource_identifier, value)
        raise NotImplementedError, "#{__method__} is not implemented."
      end

      def retrieve_values_from_resource(resource_identifier)
        raise NotImplementedError, "#{__method__} is not implemented."
      end
    end
  end
end
