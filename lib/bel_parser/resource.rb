require_relative 'resource/sparql_reader'
require_relative 'resource/resource_url_reader'

module BELParser
  module Resource

    # DEFAULT_SPARQL_ENDPOINT = 'http://sparql.openbel.org/identifiers/sparql'
    DEFAULT_SPARQL_ENDPOINT = 'http://localhost:3030/identifiers/sparql'

    READER_LOCK = Mutex.new
    private_constant :READER_LOCK

    def self.default_uri_reader
      READER_LOCK.synchronize do
        @default_uri_reader ||= SPARQLReader.new(DEFAULT_SPARQL_ENDPOINT)
      end
    end

    def self.default_uri_reader=(uri_reader)
      READER_LOCK.synchronize do
        @default_uri_reader ||= uri_reader
      end
    end

    def self.default_url_reader
      READER_LOCK.synchronize do
        @default_url_reader ||= ResourceURLReader.new
      end
    end

    def self.default_url_reader=(url_reader)
      READER_LOCK.synchronize do
        @default_url_reader ||= url_reader
      end
    end
  end
end
