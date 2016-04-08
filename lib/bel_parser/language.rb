require_relative 'language/function'
require_relative 'language/quoting'
require_relative 'language/semantics'
require_relative 'language/signature'
require_relative 'language/specification'
require_relative 'language/expression_validator'

module BELParser
  module Language

    # Mutex to synchronize creation of language specifications.
    LOCK = Mutex.new
    private_constant :LOCK

    # Returns the {Specification} for a specific language +version+.
    #
    # @param  [#to_s] version the BEL version string (e.g. +"2.0"+)
    # @return [Specification] the language specification
    # @raise  [ArgumentError] if the version string is malformed or is not
    #         supported
    def self.specification(version)
      version_string = version.to_s
      unless version_string =~ /^[0-9]+\.[0-9]+/
        raise ArgumentError, "Version format incorrect; expecting MAJOR.MINOR"
      end

      LOCK.synchronize do
        version_sym = version_string.to_sym
        @specs              ||= {}
        @specs[version_sym] ||= create_specification(version_string)
        @specs[version_sym]
      end
    end

    # Create the {Specification} for a specific language +version+.
    #
    # @param  [String] version the BEL version string (e.g. +"2.0"+)
    # @return [Specification] the language specification
    # @raise  [ArgumentError] if the version string is malformed or is not
    #         supported
    def self.create_specification(version)
      major, minor = version.split('.')
      version_file = "language/version#{major}_#{minor}"

      begin
        require_relative version_file
        version_const  = :"Version#{major}_#{minor}"
        version_module = BELParser::Language.const_get(version_const)
        version_module::Specification.new
      rescue LoadError
        raise ArgumentError, "Version #{version_string} is not supported."
      end
    end
    private_class_method :create_specification
  end
end
# BEL language/version1 and language/version2 files are loaded when needed.
