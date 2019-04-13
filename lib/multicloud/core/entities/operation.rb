module Multicloud
  module Core
    module Entities
      # The operation object.
      # @since 0.2.0
      # @attr_reader [String] action - The action name.
      # @attr_reader [Array<Hash>] - The action params.
      class Operation
        attr_reader :action
        attr_reader :params

        def initialize(&block)
          @done = false
          @block = block
          @action = caller_locations(0)[2]&.label
          @params = method(@action).parameters.map do |p|
            p_name = p[1].to_s
            { p_name => eval(p_name, block.binding) }
          end
        end

        # Runs the operation.
        # @raise [Errors::OperationAlreadyCompleted] is raised if operation
        #   already completed.
        # @return [OperationResult] The operation result.
        def run
          if done?
            raise Errors::OperationAlreadyCompleted
          end

          begin
            result = block.call
            OperationResult.new(operation: self, esult: result)
          rescue StandardError => e
            OperationResult.new(operation: self, success: false, result: nil, error: e)
          ensure
            done = true
          end
        end

        # Runs (repeat) the operation.
        # This method same as #run, but does not raise an error.
        # @return [OperationResult] The operation result.
        def repeat!
          result = block.call
          OperationResult.new(operation: self, result: result)
        rescue StandardError => e
          OperationResult.new(operation: self, success: false, result: nil, error: e)
        ensure
          done = true
        end

        # Checks the operation already completed.
        # @return [Boolean]
        def done?
          done
        end

        # Returns operation info.
        # @return [Hash]
        def info
          { action: action, params: params }
        end
      end
    end
  end
end