module Multicloud
  module Core
    module Errors
      # Base MultiCloud error
      class Error < StandardError; end

      # Invalid resource type error
      class InvalidResourceType < Error
        def initialize
          super('Invalid resource type')
        end
      end

      # Resource not found error
      # @attr_reader [String] resource_name - The resource name.
      class ResourceNotFound < Error
        attr_reader :resource_name
        def initialize(resource_name)
          super("Resource '#{resource_name}' not found")
          @resource_name = resource_name
        end
      end

      # Access denied error
      class AccessDenied < Error
        def initialize
          super('Access denied')
        end
      end

      # Operation already completed
      class OperationAlreadyCompleted < Error
        def initialize
          super('Operation already completed')
        end
      end
    end
  end
end
