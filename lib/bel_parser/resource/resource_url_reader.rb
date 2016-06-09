require          'base64'
require          'digest'
require          'dbm'
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
    # files. Value and encoding are stored in DBM database files to reduce the
    # runtime memory usage (22 resources loaded, totaling 100MB memory usage).
    #
    # Only supports resource identifiers with an HTTP or HTTPS scheme.
    class ResourceURLReader
      include Reader

      # Class ivars for tracking open {DBM} databases.
      @dataset_file   = nil
      @resource_files = {}

      DEFAULT_RESOURCE_VALUE_DELIMITER = '|'
      private_constant :DEFAULT_RESOURCE_VALUE_DELIMITER

      # Initializes a {ResourceURLReader}.
      #
      # @param [Boolean] reuse_database_files specify +true+ to reuse database
      #        files; +false+ to create new database files (default)
      def initialize(reuse_database_files = true)
        @resources = {}
        @datasets  = ResourceURLReader.open_datasets_file
        @reuse     = reuse_database_files
      end

      # Retrieve the resource identified by +resource_identifier+.
      #
      # @param  [String] resource_identifier the resource identifier
      # @return [FileResource] the file resource
      def retrieve_resource(resource_identifier)
        dataset = read_resource(resource_identifier)[:dataset]
        return nil if dataset.types.all?(&:nil?)
        dataset
      end

      def retrieve_value_from_resource(resource_identifier, value)
        resource = read_resource(resource_identifier)
        encoding = resource[:values][value]
        return nil unless encoding
        [FileResourceValue.new(resource[:dataset], value, encoding)]
      end

      def retrieve_values_from_resource(resource_identifier)
        resource = read_resource(resource_identifier)
        dataset  = resource[:dataset]
        return nil if resource[:values].size.zero?
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
        values              = ResourceURLReader.open_resource_file(url)

        if @reuse && dataset && values.size > 0
          warn(
            <<-MSG.gsub(/^ {14}/, '')
              Warning - Reusing value database.
                URL:  #{url}
                File: #{ResourceURLReader._temporary_resource_file(url)}
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

      def self.open_datasets_file
        if RUBY_ENGINE =~ /^jruby/i
          @dataset_file ||= ::DBM.new
        else
          @dataset_file ||= ::DBM.open(_temporary_datasets_file)
        end
      end

      def self.open_resource_file(url)
        if RUBY_ENGINE =~ /^jruby/i
          @resource_files[url] ||= ::DBM.new
        else
          @resource_files[url] ||= ::DBM.open(_temporary_resource_file(url))
        end
      end

      def self._temporary_datasets_file
        resource_directory = File.join(Dir.tmpdir, 'belresources')
        FileUtils.mkdir_p(resource_directory)
        File.join(resource_directory, 'datasets.gdbm')
      end

      def self._temporary_resource_file(url)
        resource_directory = File.join(Dir.tmpdir, 'belresources')
        FileUtils.mkdir_p(resource_directory)
        File.join(resource_directory, "#{_hash_url(url)}.gdbm")
      end

      def self._hash_url(url)
        Base64.encode64(Digest::SHA1.digest(url)).delete("/=\n")
      end
      private_class_method :_hash_url

      private

      def _get(url, &block)
        http = Net::HTTP.new(url.host, url.port)
        http.request_get(url).response.read_body
      end
    end
  end
end
