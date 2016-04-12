require_relative 'language/function'
require_relative 'language/quoting'
require_relative 'language/syntax'
require_relative 'language/semantics'
require_relative 'language/signature'
require_relative 'language/specification'
require_relative 'language/expression_validator'

module BELParser
  # Language defines the concepts needed to define, represent, and
  # validate a BEL specification. This includes:
  #
  # - {BELParser::Language::Specification BEL specifications}
  #   - Functions
  #   - ReturnTypes
  #   - Signatures
  #   - Relationships
  #   - Encodings
  #   - Syntax validations
  #   - Semantic validations
  # - Generic Syntax validations
  # - Generic signature validation
  module Language
    # Mutex to synchronize creation of BEL specifications.
    LOCK = Mutex.new
    private_constant :LOCK

    # Indicates if +version+ is a defined BEL specification.
    #
    # @param  [#to_s] version the BEL version string (e.g. +"2.0"+)
    # @return [Boolean] +true+ if +version+ is defined; +false+ if not
    def self.defines_version?(version)
      specification(version)
      true
    rescue ArgumentError, LoadError
      false
    end

    # Returns all version strings that are defined and supported by this
    # project.
    #
    # @return [Array<String>] BEL language versions
    def self.versions
      Dir[
        File.join(
          File.expand_path('..', __FILE__),
          'language',
          'version*.rb'
        )
      ].map do |path|
        file_name = File.basename(path)
        file_name.scan(/[0-9]+_[0-9]+/).first.sub('_', '.')
      end.sort
    end

    # Returns all language {Specification specifications}.
    #
    # @return [Array<Specification>] BEL specifications
    def self.specifications
      versions.map { |version| specification(version) }
    end

    # Returns the {Specification} for a BEL specification +version+.
    #
    # @param  [#to_s] version the BEL version string (e.g. +"2.0"+)
    # @return [Specification] the BEL specification
    # @raise  [ArgumentError] if the version string is malformed or is not
    #         supported
    # @see    {.defines?}
    def self.specification(version)
      version_string = version.to_s
      unless version_string =~ /^[0-9]+\.[0-9]+/
        raise ArgumentError, 'Version format incorrect; expecting MAJOR.MINOR'
      end

      LOCK.synchronize do
        version_sym = version_string.to_sym
        @specs              ||= {}
        @specs[version_sym] ||= create_specification(version_string)
        @specs[version_sym]
      end
    end

    # Create the {Specification} for a BEL +version+.
    #
    # @param  [String] version the BEL version string (e.g. +"2.0"+)
    # @return [Specification] the BEL specification
    # @raise  [ArgumentError] if the version string is malformed or is not
    #         supported
    # @see    {.defines?}
    def self.create_specification(version)
      major, minor = version.split('.')
      version_file = "language/version#{major}_#{minor}"

      begin
        require_relative version_file
        version_const  = :"Version#{major}_#{minor}"
        version_module = BELParser::Language.const_get(version_const)
        version_module::Specification.new
      rescue LoadError
        raise ArgumentError, "Version #{version} is not supported."
      end
    end
    private_class_method :create_specification
  end
end
