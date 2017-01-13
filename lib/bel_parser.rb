# library version
require 'bel_parser/version'

# vendored 'ast' gem
require 'bel_parser/vendor/ast'

# AST model
require 'bel_parser/parsers/ast/node'

# ragel parsers
require 'bel_parser/parsers/common'
require 'bel_parser/parsers/expression'
require 'bel_parser/parsers/bel_script'

# AST processors
require 'bel_parser/ast_generator'
require 'bel_parser/ast_filter'

# Language; version-independent classes
require 'bel_parser/language'

# BEL Resource support
require 'bel_parser/resources'

# BEL Expression support
require 'bel_parser/expression'

# BEL Script support
require 'bel_parser/script'
