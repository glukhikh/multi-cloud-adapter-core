module Multicloud
  module Core
    module Entities
      # The cloud storage resource (base for file/dir).
      # @abstract
      class Resource
        include Comparable

        attr_reader :name
        attr_reader :path
        attr_reader :type
        attr_reader :created_at
        attr_reader :updated_at

        # Creates a new resource.
        # @param [String] name - The resource name.
        # @param [String] path - The resource path.
        # @param [String] type - The resource type.
        # @param [Integer] created_at - The resource created_at timestamp.
        # @param [Integer] updated_at - The resource updated_at timestamp.
        def initialize(name:, path:, type:, created_at:, updated_at:)
          @name = name
          @path = path
          @type = type
          @created_at = created_at
          @updated_at = updated_at
        end

        def <=>(other)
          name <=> other.name
        end
      end
    end
  end
end
