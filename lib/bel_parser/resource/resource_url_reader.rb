require          'base64'
require          'digest'
require          'gdbm'
require          'net/http'
require          'tempfile'
require          'uri'
require_relative 'reader'
require_relative 'file_resource'
require_relative 'file_resource_value'

module BELParser
  module Resource
    # ResourceURLReader retrieves {Dataset datasets} and {Value values} from
    # Annotation (i.e. belanno extension) and Namespace (i.e. belns extension)
    # files. Value and encoding are stored in GDBM database files to reduce the
    # runtime memory usage (22 resources loaded, totaling 100MB memory usage).
    #
    # Only supports resource identifiers with an HTTP or HTTPS scheme.
    class ResourceURLReader
      include Reader

      DEFAULT_RESOURCE_VALUE_DELIMITER = '|'
      private_constant :DEFAULT_RESOURCE_VALUE_DELIMITER

      def initialize(reuse_database_files = false)
        @resources = {}
        @datasets  = ::GDBM.new(_temporary_datasets_file)
        @reuse     = reuse_database_files
      end

      def retrieve_resource(resource_identifier)
        read_resource(resource_identifier)[:dataset]
      end

      def retrieve_value_from_resource(resource_identifier, value)
        resource = read_resource(resource_identifier)
        encoding = resource[:values][value]
        return nil unless encoding
        FileResourceValue.new(resource[:dataset], value, encoding)
      end

      def retrieve_values_from_resource(resource_identifier)
        resource = read_resource(resource_identifier)
        dataset  = resource[:dataset]
        resource[:values].lazy.map do |value, encoding|
          FileResourceValue.new(dataset, value, encoding)
        end
      end

      protected

      def read_resource(url)
        # return cached resource if present
        resource = @resources[url]
        return resource if resource

        # read url
        content = http_get(url)
        unless content
          # cache and return empty resource if not resolvable
          return @resources[url] = empty_resource
        end

        @resources[url] = create_resource(url, content.each_line)
      end

      def create_resource(url, line_enum)
        delimiter           = DEFAULT_RESOURCE_VALUE_DELIMITER
        dataset             = @datasets[url]
        value_database_file = _temporary_database_file(url)
        values              = ::GDBM.new(value_database_file)

        if @reuse && dataset && values.size > 0
          warn(
            <<-MSG.gsub(/^ {14}/, '')
              Warning - Reusing value database.
                URL:  #{url}
                File: #{value_database_file}
            MSG
          )
          return {
            dataset: FileResource.new(url, *dataset.split('//')),
            values:  values
          }
        end

        value_section               = false
        type, name, keyword, domain = nil
        line_enum.each do |line|
          line.strip!
          case
          when line =~ /^#{Regexp.escape('[AnnotationDefinition]')}/
            type = Dataset::ANNOTATION
          when line =~ /^#{Regexp.escape('[Namespace]')}/
            type = Dataset::NAMESPACE
          when line =~ /^NameString *= *(.*)$/
            name = Regexp.last_match[1]
          when line =~ /^Keyword *= *(.*)$/
            keyword = Regexp.last_match[1]
          when line =~ /^DomainString *= *(.*)$/
            domain = Regexp.last_match[1]
          when line =~ /^DelimiterString *=(.*)$/
            delimiter = Regexp.last_match[1]
          when line =~ /^#{Regexp.escape('[Values]')}/
            dataset = FileResource.new(url, domain, keyword, name, type)
            value_section = true
          when value_section
            value, encoding    = line.strip.split(delimiter)
            values[value.to_s] = encoding.to_s
          end
        end

        resource = {
          dataset: FileResource.new(url, domain, keyword, name, type),
          values:  values
        }
        @datasets[url] = [domain, keyword, name, type].join('//')
        resource
      end

      def empty_resource
        { dataset: nil, values: {} }
      end

      def http_get(url)
        begin
          _get(URI.parse(url))
        rescue URI::InvalidURIError, SocketError
          return nil
        end
      end

      private

      def _get(url, &block)
        Net::HTTP.start(url.host, url.port) do |http|
          http.request(Net::HTTP::Get.new(url)) do |response|
            return response.read_body
          end
        end
      end

      def _hash_url(url)
        Base64.encode64(Digest::SHA1.digest(url)).delete("/=\n")
      end

      def _temporary_datasets_file
        resource_directory = File.join(Dir.tmpdir, 'belresources')
        FileUtils.mkdir_p(resource_directory)
        File.join(resource_directory, 'datasets.gdbm')
      end

      def _temporary_database_file(url)
        resource_directory = File.join(Dir.tmpdir, 'belresources')
        FileUtils.mkdir_p(resource_directory)
        File.join(resource_directory, "#{_hash_url(url)}.gdbm")
      end
    end
  end
end
