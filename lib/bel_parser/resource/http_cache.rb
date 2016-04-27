require 'base64'
require 'concurrent/hash'
require 'digest'
require 'fileutils'
require 'net/http'
require 'tempfile'

module BELParser
  module Resource
    class HTTPCache

      # Lock (per URL) ensures concurrent retrieval/caching is thread-safe.
      URL_LOCKS = Concurrent::Hash.new do |hash, key|
        hash[key] = Mutex.new
      end
      private_constant :URL_LOCKS

      def initialize(base_dir="#{Dir.tmpdir}/bel-resources")
        @base_dir  = FileUtils.mkdir_p(base_dir).first
      end

      def get(url)
        cached_url_path = File.join(@base_dir, hash_url(url))
        URL_LOCKS[url].synchronize do
          if File.exists?(cached_url_path)
            if block_given?
              File.open(cached_url_path) do |cached_file|
                yield cached_file
              end
            else
              File.open(cached_url_path)
            end
          else
            uri = URI.parse(url)
            cached_file = File.open(cached_url_path, 'w')
            begin
              Net::HTTP.start(uri.host, uri.port) do |http|
                http.request(Net::HTTP::Get.new(uri)) do |response|

                  if block_given?
                    if response.is_a?(Net::HTTPOK)
                      response.read_body do |chunk|
                        cached_file.write(chunk)
                        yield StringIO.new(chunk)
                      end
                    else
                      yield nil
                    end
                  else
                    if response.is_a?(Net::HTTPOK)
                      content = response.read_body
                      cached_file.write(content)
                      return StringIO.new(content)
                    else
                      return nil
                    end
                  end
                end
              end
            ensure
              cached_file.close
            end
          end
        end
      end

      protected

      def hash_url(url)
        Base64.encode64(Digest::SHA1.digest(url)).delete("/=\n")
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  BELParser::Resource::HTTPCache.new.get(ARGV.first) do |io|
    io.each_line { |line| puts line }
  end
end
