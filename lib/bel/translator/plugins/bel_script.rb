module BEL::Translator::Plugins
  # BELScript plugs a translator for BEL Script into bel.rb.
  # Supports multiple BEL specifications by using the
  # {BELParser::Language::ExpressionValidator expression validator}.
  module BelScript
    ID          = :bel_script
    NAME        = 'BEL Script Translator'
    DESCRIPTION = 'A translator that can read/write evidence to BEL Script.'
    MEDIA_TYPES = %i(application/bel)
    EXTENSIONS  = %i(bel)

    def self.create_translator(options = {})
      require 'bel'
      require_relative 'bel_script/translator'
      BelScriptTranslator.new
    end

    def self.id
      ID
    end

    def self.name
      NAME
    end

    def self.description
      DESCRIPTION
    end

    def self.media_types
      MEDIA_TYPES
    end

    def self.file_extensions
      EXTENSIONS
    end
  end
end
