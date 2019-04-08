module Multicloud
  module Core
    module Entities
      # The cloud storage resource (base for file/dir).
      class Directory < Resource
        attr_reader :resource_list

        # Creates a new directory.
        # @param [String] name - The directory name.
        # @param [String] path - The directory path.
        # @param [Integer] created_at - The directory created_at timestamp.
        # @param [Integer] updated_at - The directory updated_at timestamp.
        # @param [ResourceList] resource_list - The resource list.
        def initialize(name:, path:, created_at:, updated_at:, resource_list: nil)
          super(
            name: name,
            path: path,
            type: 'dir',
            created_at: created_at,
            updated_at: updated_at
          )
          @resource_list = resource_list
        end
      end
    end
  end
end
