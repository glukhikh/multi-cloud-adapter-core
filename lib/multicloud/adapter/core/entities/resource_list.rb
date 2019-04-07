module Multicloud
  module Adapter
    module Core
      module Entities
        # The cloud storage resource list.
        class ResourceList
          include Enumerable

          attr_accessor :resources

          # Creates a new resource list.
          # @param [Array] resources - The array of resources (files/dirs).
          def initialize(resources)
            @resources = resources
          end

          # Enumerable overriding.
          def each(&block)
            resources.each(&block)
          end

          # Enumerable overriding.
          def select(&block)
            resources.select(&block)
          end

          # Returns only files.
          # @return [Array] The array of resources.
          def files
            select { |resource| resource.type == 'file' }
          end

          # Returns only directories.
          # @return [Array] The array of resources.
          def directories
            select { |resource| resource.type == 'dir' }
          end
        end
      end
    end
  end
end
