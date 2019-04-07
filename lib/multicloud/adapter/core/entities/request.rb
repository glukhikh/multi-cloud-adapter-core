module Multicloud
  module Adapter
    module Core
      module Entities
        # The cloud storage (HTTP) request (for downloading/uploading).
        class Request
          attr_reader :url
          attr_reader :method
          attr_reader :headers
          attr_reader :body

          # Creates a new request.
          # @param [String] url - The request url.
          # @param [String] method - The request method.
          # @param [Hash] headers - The request headers.
          # @param [Hash] body - The request body.
          def initialize(url:, method:, headers:, body:)
            @url = url
            @method = method
            @headers = headers
            @body = body
          end
        end
      end
    end
  end
end
