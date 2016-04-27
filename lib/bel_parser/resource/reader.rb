module BELParser
  module Resource
    # Reader represents the API for a reader of resource data.
    module Reader
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
