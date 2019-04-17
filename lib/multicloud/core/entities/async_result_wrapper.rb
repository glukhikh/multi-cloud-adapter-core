module Multicloud
  module Core
    module Entities
      # The async operation result. If the operation is async then
      # you should wrap it in AsyncResultWrapper.
      # @since 0.4.0
      # @attr_reader [String] url - The url of status checking.
      class AsyncResultWrapper
        attr_reader :url

        def initialize(url)
          @url = url
        end
      end
    end
  end
end
