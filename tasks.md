* Semantics

- [x] (Generic) Semantic warning if function or relationship is marked as deprecated.
- [x] (Generic) Semantic warning if nested statement depth is greater than 1.
- [x] (Generic) Semantic warning if a *list* is used as a subject.
- [x] (Generic) Semantic warning if a nested statement does not use a *Causal* relationship.
- [x] (Generic) Semantic warning if a *list* is not an object of the listable relationship category (*hasComponents*, *hasMembers*).
- [x] (Generic) Semantic warning if a listable/multiple relationship uses the subject term as an object list() term argument.
- [x] (Generic) Semantic warning if amino acid does not match controlled vocabulary.
- (Generic) Semantic warning if a modification position is not a positive integer.

- (1.0) Semantic warning if covalent modification does not match controlled vocabulary.

* Design interface for resolving resource URIs / URLs.
* Design interface for retrieving encoding for namespace and value.
* Assign *namespace* property to *prefix*.
* Assign *encoding* property to *value*.
* Update semantic AST to match *namespace* and *encoding*.

- (2.0) Semantic warning if parameter does not encode a covalent modification (Uses Namespace encoding).

- (Generic) Syntax warning if *value* does not exist in *namespace*.

=====

OpenBEL API
- Validation
  - BEL 2 only
- Autocomplete
  - BEL 2 only
- Import / Export functionality only supports BEL 2.0. An error will be returned if a document's BEL version is != 2.0.

bel.rb
- Language conversion command in bel.rb (e.g. "bel langconvert") to convert from BEL 1.0 to 2.0.
  - Can we use bel.rb's evidence model for the substrate?

BEL Script
- Support BEL version in document properties header.
- Move "Evidence" to "Support". Particularly important for mapping to Evidence model.

(William)
BEL Nanopub JSON (BNJ, pronounced "binge") / JGF
- BNJ naming, binge pronounciation
- Evidence -> Nanopub
- Summary Text -> Support
(/William)

Punchlist
- [x] Amino acid range semantics
- [x] Associate signatures to functions.
- [x] Implement semantic API for terms.
- Report semantic success/failure for BEL Expression parser.
- Error messages for version1 and version2 semantics.

- Enumerate all synax and semantic checks.
  - How can all of these be implemented quickly with AST reuse?
  - Syntax check outlined previously (phone capture).

- Add namespace and encoding properties to expression ASTs.
  - Add bel.rb as dependency.
  - Provide AST processor that decorates prefix.identifier nodes with "namespace".
  - Provide AST processor that decorates value.identifier|string nodes with "encoding".
  - use RDF Repository plugin and Resource API

=====

BEL/BEL Script Parser
- Syntactic validation of BEL expressions (ASTs)
- BEL, version 1.0.
  * Represent language semantics (functions, relationships, encoding, signatures, etc.)
  * Syntax validation
  * Semantic validation
- BEL, version 2.0.
  * Represent language semantics (functions, relationships, encoding, signatures, etc.)
  * Syntax validation
  * Semantic validation
- BEL Script, version 1.1
  * Syntax validation (document level)
  * Add document property for BEL version (e.g. SET Document BELVersion = "2.0.0")
  * Add URI support for BEL namespace and annotation.
  * Revisit supporting annotation domain (e.g. Anatomy) that comprise multiple datasets (e.g. MESH, UBERON).
    - Conversation with Natalie: http://wiki.openbel.org/display/~abargnesi/Resolving+annotations+and+namespaces+by+type+URI
  * BEL Script parser with adapters for BEL versions 1.0 and 2.0.

XBEL
- New schema for XBEL; support BEL, version 2.0.
  * Add document property for BEL version (e.g. `<bel:version>2.0.0</bel:version>`)
  * Add URI support for BEL namespace and annotation.
  * Revisit supporting annotation domain (e.g. Anatomy) that comprise multiple datasets (e.g. MESH, UBERON).
    - Conversation with Natalie: http://wiki.openbel.org/display/~abargnesi/Resolving+annotations+and+namespaces+by+type+URI
- Rewrite XBEL translator within bel.rb.
- Parse XBEL for BEL, version 2.0, for AST

JGF
- Review BEL JGF format for conformity.
- Support specifying BEL language in graph metadata
- Add document property for BEL version (e.g. `<bel:version>2.0.0</bel:version>`)
- Add URI support for BEL namespace and annotation.
- Revisit supporting annotation domain (e.g. Anatomy) that comprise multiple datasets (e.g. MESH, UBERON).
  * Conversation with Natalie: http://wiki.openbel.org/display/~abargnesi/Resolving+annotations+and+namespaces+by+type+URI

RDF
- Review RDF representation for BEL 1.0
- Design and document RDF representation for BEL 2.0
- Implement AST to RDF conversion

API
- Review/document nanopublication (BEL evidence) resulting from processing BEL 2.0
- OpenBEL API autocomplete, syntax, semantic, and component analysis
- Automatable deployment solution for installing

Upgrade content
- Upgrade tools for BEL 1.0 to BEL 2.0 (e.g., activities, locations, etc.)
- Command-line tool (e.g. `bel ugprade` in bel.rb).
- Upgrade content on import into OpenBEL API from BEL, version 1.0 to version 2.0.
- Upgrade BEL/XBEL documents (corpora, abstracts, etc.)

Vocabulary
- Upgrade BEL terminology throughout (including nanopublications, BEL knowledge networks (BKNs), etc.)

Documentation

- OpenBEL API documentation
- Language specification and documentation
- Provide Integration test documentation
- Provide full user documentation on new features & functionality available in BEL 2.0

Process

- Work closely with PMP and Fraunhofer to test the updated functionality & features

-----

- [x] [prototype] Implement BEL structural parsers, producing AST.
- [x] [prototype] Implement BEL line parser.
  - [x] normalize new lines
  - [x] line continuator
  - [x] apply BEL structural parsers
- [x] [prototype] Implement BEL Script line parser.
  - [x] normalize new lines
  - [x] line continuator
- [x] [prototype] Implement BEL Script record parsers, producing AST.
- [prototype] Define BEL version 1.0.
  - function types
  - relationship types
  - modification types
  - amino acids
- [prototype] Implement BEL structural validation rules (condition, error messages).
  - [error] Incomplete parameter at column N.
  - [error] Incomplete term at column N.
  - [error] Missing relationship at column N.
- [prototype] Implement BEL version 1.0 syntax validation rules (condition, error messages).
  - [error] Invalid function type.
  - [error] Invalid relationship type.
  - [error] Invalid modification.
  - [error] Invalid amino acid.
- [prototype] Implement BEL version 2.0 syntax validation rules (condition, error messages).
  - [error]
  - [warning]
- [prototype] Implement BEL Script version 1.0 syntax validation rules (condition, error messages).
  - [error]   SET DOCUMENT record is invalid.
  - [error]   SET DOCUMENT records must occur at the top of the document.
  - [error]   DEFINE ANNOTATION record is invalid.
  - [error]   DEFINE NAMESPACE record is invalid.
  - [error]   DEFINE records must occur at the top of the document after all SET DOCUMENT records.
  - [error]   SET record is invalid.
  - [error]   Annotation "{NAME}" has not been defined using a DEFINE ANNOTATION record.
  - [error]   BEL statement is invalid.
  - [warning] The document does not set a Name property. Try SET DOCUMENT Name = "Document Name".
  - [warning] The document does not set a Version property. Try SET DOCUMENT Version = "Document Version".
