module Multicloud
  module Core
    module Entities
      # The cloud storage file.
      class File < Resource
        attr_reader :hash
        attr_reader :mime_type
        attr_reader :size

        # Creates a new resource.
        # @param [String] name - The file name.
        # @param [String] path - The file path.
        # @param [Integer] created_at - The file created_at timestamp.
        # @param [Integer] updated_at - The file updated_at timestamp.
        # @param [String] hash - The file hash.
        # @param [String] mime_type - The file mime type.
        # @param [Integer] size - The file suze.
        def initialize(name:, path:, created_at:, updated_at:, hash:, mime_type:, size:)
          super(
            name: name,
            path: path,
            type: 'file',
            created_at: created_at,
            updated_at: updated_at
          )
          @hash = hash
          @mime_type = mime_type
          @size = size
        end
      end
    end
  end
end
