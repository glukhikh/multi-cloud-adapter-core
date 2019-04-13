module Multicloud
  module Core
    # The base MultiCloud adapter.
    # Must be implemented by a concrete adapter.
    # @abstract
    # @since 0.1.0
    class BaseAdapter
      attr_accessor :auth_credentionals
      attr_accessor :request_credentionals

      # Creates a new adapter.
      # @param [Hash] request_credentionals - The request auth data.
      def initialize(request_credentionals)
        @request_credentionals = request_credentionals
      end

      # Authorization with credentionals.
      # @param [Hash] auth_credentionals - The auth data (for getting request creds).
      # @return [Hash] The request credentionals (for making requests).
      def auth(auth_credentionals)
        raise NotImplementedError
      end

      # Common account methods

      # Returns the disk info.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @return [OperationResult<DiskInfo>] The disk info.
      def disk_info
        raise NotImplementedError
      end

      # Returns the max file size limitation.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @return [OperationResult<Integer>] The max file size in bytes.
      def max_file_size
        raise NotImplementedError
      end

      # Directory methods

      # Returns directory items.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the directory.
      # @return [OperationResult<ResourceList>] The array of dir items.
      def dir_items(path)
        raise NotImplementedError
      end

      # Creates a new directory.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the directory.
      # @return [OperationResult]
      def create_dir(path)
        raise NotImplementedError
      end

      # Removes the directory.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @raise [Multicloud::Core::Errors::ResourceNotFound]
      # @param [String] path - The path to the directory.
      # @param [Boolean] permanently - The flag of permanently removed.
      # @return [OperationResult]
      def remove_dir(path, permanently = false)
        raise NotImplementedError
      end

      # Copies the directory.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] from_path - The path to an original directory.
      # @param [String] to_path - The path to a new directory.
      # @param [Boolean] overwrite - The flag of ovewriting of resource.
      # @return [OperationResult]
      def copy_dir(from_path, to_path, overwrite = false)
        raise NotImplementedError
      end

      # Moves the directory.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] from_path - The path to an original directory.
      # @param [String] to_path - The path to a new directory.
      # @param [Boolean] overwrite - The flag of ovewriting of resource.
      # @return [OperationResult]
      def move_dir(from_path, to_path, overwrite = false)
        raise NotImplementedError
      end

      # Renames the directory.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the directory.
      # @param [String] new_name - The new directory name.
      # @return [OperationResult]
      def rename_dir(path, new_name)
        raise NotImplementedError
      end

      # File methods

      # Returns the uploading request (url, credentionals, etc).
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the directory.
      # @return [OperationResult<UploadingRequest>] The uploading request.
      def upload_file(path)
        raise NotImplementedError
      end

      # Returns the downloading request (url, credentionals, etc).
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the directory.
      # @return [OperationResult<DownloadingRequest>] The downloading request.
      def download_file(path)
        raise NotImplementedError
      end

      # Removes the file.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @raise [Multicloud::Core::Errors::ResourceNotFound]
      # @param [String] path - The path to the file.
      # @param [Boolean] permanently - The flag of permanently removed.
      # @return [OperationResult]
      def remove_file(path, permanently = false)
        raise NotImplementedError
      end

      # Copies the file.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] from_path - The path to an original file.
      # @param [String] to_path - The path to a new file.
      # @param [Boolean] overwrite - The flag of ovewriting of resource.
      # @return [OperationResult]
      def copy_file(from_path, to_path, overwrite = false)
        raise NotImplementedError
      end

      # Moves the file.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] from_path - The path to an original file.
      # @param [String] to_path - The path to a new file.
      # @param [Boolean] overwrite - The flag of ovewriting of resource.
      # @return [OperationResult]
      def move_file(from_path, to_path, overwrite = false)
        raise NotImplementedError
      end

      # Renames the file.
      # @raise [Multicloud::Core::Errors::AccessDenied]
      # @param [String] path - The path to the file.
      # @param [String] new_name - The new file name.
      # @return [OperationResult]
      def rename_file(path, new_name)
        raise NotImplementedError
      end
    end
  end
end
