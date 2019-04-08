module Multicloud
  module Core
    module Entities
      # The cloud storage disk info.
      class DiskInfo
        attr_reader :total
        attr_reader :free
        attr_reader :used

        # Creates a new disk info.
        # @param [Integer] total - The total disk space in bytes.
        # @param [Integer] free - The free disk space in bytes.
        # @param [Integer] used - The used disk space in bytes.
        def initialize(total:, free:, used:)
          @total = total 
          @free = free
          @used = used
        end
      end
    end
  end
end
