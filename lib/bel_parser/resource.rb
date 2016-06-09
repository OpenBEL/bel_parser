require          'net/http'
require_relative 'resource/sparql_reader'
require_relative 'resource/resource_url_reader'

module BELParser
  module Resource

    DEFAULT_SPARQL_ENDPOINT = 'http://resources.openbel.org/sparql'

    READER_LOCK       = Mutex.new
    private_constant :READER_LOCK
    RESOLVE_URI_LOCK  = Mutex.new
    private_constant :RESOLVE_URI_LOCK
    URISTRING_PATTERN = /^URIString *= *(.*)$/
    private_constant :URISTRING_PATTERN

    @default_uri_reader = SPARQLReader.new(DEFAULT_SPARQL_ENDPOINT, false)
    @default_url_reader = ResourceURLReader.new

    def self.default_uri_reader
      READER_LOCK.synchronize do
        @default_uri_reader
      end
    end

    def self.default_uri_reader=(uri_reader)
      READER_LOCK.synchronize do
        @default_uri_reader = uri_reader
      end
    end

    def self.default_url_reader
      READER_LOCK.synchronize do
        @default_url_reader
      end
    end

    def self.default_url_reader=(url_reader)
      READER_LOCK.synchronize do
        @default_url_reader = url_reader
      end
    end

    # Resolves the URI String from the annotation or namespace resource.
    #
    # The resource must contain a _URIString=..._ property.
    #
    # @param  [#to_s] resource_url the resource URL to resolve the URI from
    # @return [String] the resource URI specified in the resource
    def self.resolve_uri(resource_url)
      resource_url = resource_url.to_s

      RESOLVE_URI_LOCK.synchronize do
        @uri_hash ||= {}
        return @uri_hash[resource_url] if @uri_hash.key?(resource_url)
      end

      uri              = URI(resource_url)
      request          = Net::HTTP::Get.new(uri)
      request['Range'] = 'bytes=0-5000'
      resource_uri     = nil

      http = Net::HTTP.new(uri.hostname, uri.port)
      http.request(request) do |response|
        response.read_body do |chunk|
          uristring    = chunk.lines.detect { |l| l =~ URISTRING_PATTERN }
          if uristring
            resource_uri = uristring.match(URISTRING_PATTERN)[1]
            break
          end
        end
      end

      RESOLVE_URI_LOCK.synchronize do
        @uri_hash ||= {}
        @uri_hash[resource_url] = resource_uri
      end

      resource_uri
    end
  end
end
