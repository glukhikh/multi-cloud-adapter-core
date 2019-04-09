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
    end
  end
end
