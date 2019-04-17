module Multicloud
  module Core
    module Entities
      # The operation result.
      # @since 0.2.0
      # @attr_reader [Boolean] success - The success flag.
      # @attr_reader [Any] result - The result of operation.
      # @attr_redaer [Exception] error - The error object.
      # @attr_reader [Operation] operation - The operation.
      class OperationResult
        attr_reader :success
        attr_reader :result
        attr_reader :error
        attr_reader :operation

        def initialize(operation:, result:, success: true, error: nil)
          @async = result.is_a?(AsyncResultWrapper)
          @operation = operation
          @success = success
          @result = @async ? result.url : result
          @error = error
        end

        # Returns true if result is an async.
        # @since 0.4.0
        # @return [Boolean]
        def async?
          @async
        end
      end
    end
  end
end