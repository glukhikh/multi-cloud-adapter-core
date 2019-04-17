module Multicloud
  module Core
    module Entities
      # The async operation result.
      # @since 0.4.0
      # @attr_reader [String] status - The success flag.
      # @attr_reader [Integer] percentage - The result of operation.
      class AsyncStatus
        attr_reader :status
        attr_reader :percentage

        def initialize(status, percentage = 0)
          @status = status
          @percentage = percentage
        end
      end
    end
  end
end
