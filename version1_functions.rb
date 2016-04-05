VERSION1_FUNCTIONS = [
  {
    name:        'Abundance',
    description: 'Denotes the abundance of an entity',
    short: :a,
    long: :abundance,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name: 'AbundanceSignature',
        string_form: 'abundance(E:abundance)abundance'
      }
    ]
  },
  {
    name:        'BiologicalProcess',
    description: 'Denotes a process or population of events',
    short: :bp,
    long: :biologicalProcess,
    return_type: "BEL::Language::Version1::ReturnTypes::BiologicalProcess",
    signatures: [
      {
        name: 'BiologicalProcessSignature',
        string_form: 'biologicalProcess(E:biologicalProcess)biologicalProcess'
      }
    ]
  },
  {
    name:        'CatalyticActivity',
    description: 'Denotes the frequency or abundance of events where a member acts as an enzymatic catalyst of biochecmial reactions',
    short: :cat,
    long: :catalyticActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::CatalyticActivity",
    signatures: [
      {
        name: 'CatalyticActivityOfComplexAbundanceSignature',
        string_form: 'catalyticActivity(F:complexAbundance)catalyticActivity'
      },
      {
        name: 'CatalyticActivityOfProteinAbundanceSignature',
        string_form: 'catalyticActivity(F:proteinAbundance)catalyticActivity'
      }
    ]
  },
  {
    name:        'CellSecretion',
    description: 'Denotes the frequency or abundance of events in which members of an abundance move from cells to regions outside of the cells',
    short: :sec,
    long: :cellSecretion,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name: 'CellSecretionSignature',
        string_form: 'cellSecretion(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'CellSurfaceExpression',
    description: 'Denotes the frequency or abundance of events in which members of an abundance move to the surface of cells',
    short: :surf,
    long: :cellSurfaceExpression,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name: 'CellSurfaceExpressionSignature',
        string_form: 'cellSurfaceExpression(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'ChaperoneActivity',
    description: 'Denotes the frequency or abundance of events in which a member binds to some substrate and acts as a chaperone for the substrate',
    short: :chap,
    long: :chaperoneActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::ChaperoneActivity",
    signatures: [
      {
        name: 'ChaperoneActivityOfComplexAbundanceSignature',
        string_form: 'chaperoneActivity(F:complexAbundance)chaperoneActivity'
      },
      {
        name: 'ChaperoneActivityOfProteinAbundanceSignature',
        string_form: 'chaperoneActivity(F:proteinAbundance)chaperoneActivity'
      }
    ]
  },
  {
    name:        'ComplexAbundance',
    description: 'Denotes the abundance of a molecular complex',
    short: :complex,
    long: :complexAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::ComplexAbundance",
    signatures: [
      {
        name:        'NamedComplexAbundanceSignature',
        string_form: 'complexAbundance(E:abundance)complexAbundance'
      },
      {
        name:        'ComposedComplexAbundanceSignature',
        string_form: 'complexAbundance(F:abundance...)complexAbundance'
      }
    ]
  },
  {
    name:        'CompositeAbundance',
    description: 'Denotes the frequency or abundance of events in which members are present',
    short: :composite,
    long: :compositeAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'CompositeAbundanceSignature',
        string_form: 'compositeAbundance(F:abundance...)abundance'
      }
    ]
  },
  {
    name:        'Degradation',
    description: 'Denotes the frequency or abundance of events in which a member is degraded in some way such that it is no longer a member',
    short: :deg,
    long: :degradation,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'DegradationSignature',
        string_form: 'degradation(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'Fusion',
    description: 'Specifies the abundance of a protein translated from the fusion of a gene',
    short: :fus,
    long: :fusion,
    return_type: "BEL::Language::Version1::ReturnTypes::Fusion",
    signatures: [
      {
        name:        'FusionGeneAbundanceWithBreakpointsSignature',
        string_form: 'fusion(E:geneAbundance,E:*,E:*)fusion'
      },
      {
        name:        'FusionGeneAbundanceSignature',
        string_form: 'fusion(E:geneAbundance)fusion'
      },
      {
        name:        'FusionProteinAbundanceWithBreakpointsSignature',
        string_form: 'fusion(E:proteinAbundance,E:*,E:*)fusion'
      },
      {
        name:        'FusionProteinAbundanceSignature',
        string_form: 'fusion(E:proteinAbundance)fusion'
      },
      {
        name:        'FusionRNAAbundanceWithBreakpointsSignature',
        string_form: 'fusion(E:rnaAbundance,E:*,E:*)fusion'
      },
      {
        name:        'FusionRNAAbundanceSignature',
        string_form: 'fusion(E:rnaAbundance)fusion'
      }
    ]
  },
  {
    name:        'GeneAbundance',
    description: 'Denotes the abundance of a gene',
    short: :g,
    long: :geneAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::GeneAbundance",
    signatures: [
      {
        name:        'GeneAbundanceWithFusionSignature',
        string_form: 'geneAbundance(E:geneAbundance,F:fusion)geneAbundance'
      },
      {
        name:        'GeneAbundanceSignature',
        string_form: 'geneAbundance(E:geneAbundance)geneAbundance'
      }
    ]
  },
  {
    name:        'GTPBoundActivity',
    description: 'Denotes the frequency or abundance of events in which a member of a G-protein abundance is GTP-bound',
    short: :gtp,
    long: :gtpBoundActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::GTPBoundActivity",
    signatures: [
      {
        name:        'GTPBoundActivityOfComplexAbundanceSignature',
        string_form: 'gtpBoundActivity(F:complexAbundance)gtpBoundActivity'
      },
      {
        name:        'GTPBoundActivityOfProteinAbundanceSignature',
        string_form: 'gtpBoundActivity(F:proteinAbundance)gtpBoundActivity'
      }
    ]
  },
  {
    name:        'KinaseActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts as a kinase, performing enzymatic phosphorylation of a substrate',
    short: :kin,
    long: :kinaseActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::KinaseActivity",
    signatures: [
      {
        name:        'KinaseActivityOfComplexAbundanceSignature',
        string_form: 'kinaseActivity(F:complexAbundance)kinaseActivity'
      },
      {
        name:        'KinaseActivityOfProteinAbundanceSignature',
        string_form: 'kinaseActivity(F:proteinAbundance)kinaseActivity'
      }
    ]
  },
  {
    name:        'List',
    description: 'Groups a list of terms together',
    short: :list,
    long: :list,
    return_type: "BEL::Language::Version1::ReturnTypes::List",
    signatures: [
      {
        name:        'ListOfAbundanceEncodingSignature',
        string_form: 'list(E:abundance...)list'
      },
      {
        name:        'ListOfAbundanceSignature',
        string_form: 'list(F:abundance...)list'
      }
    ]
  },
  {
    name:        'MicroRNAAbundance',
    description: 'Denotes the abundance of a processed, functional microRNA',
    short: :m,
    long: :microRNAAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::MicroRNAAbundance",
    signatures: [
      {
        name:        'MicroRNAAbundanceSignature',
        string_form: 'microRNAAbundance(E:microRNAAbundance)microRNAAbundance'
      }
    ]
  },
  {
    name:        'MolecularActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts as a causal agent at the molecular scale',
    short: :act,
    long: :molecularActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::MolecularActivity",
    signatures: [
      {
        name:        'MolecularActivityOfAbundanceSignature',
        string_form: 'molecularActivity(F:abundance)molecularActivity'
      }
    ]
  },
  {
    name:        'Pathology',
    description: 'Denotes a disease or pathology process',
    short: :path,
    long: :pathology,
    return_type: "BEL::Language::Version1::ReturnTypes::Pathology",
    signatures: [
      {
        name:        'PathologySignature',
        string_form: 'pathology(E:pathology)pathology'
      }
    ]
  },
  {
    name:        'PeptidaseActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts to cleave a protein',
    short: :pep,
    long: :peptidaseActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::PeptidaseActivity",
    signatures: [
      {
        name:        'PeptidaseActivityOfComplexAbundanceSignature',
        string_form: 'peptidaseActivity(F:complexAbundance)peptidaseActivity'
      },
      {
        name:        'PeptidaseActivityOfProteinAbundanceSignature',
        string_form: 'peptidaseActivity(F:proteinAbundance)peptidaseActivity'
      }
    ]
  },
  {
    name:        'PhosphataseActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts as a phosphatase',
    short: :phos,
    long: :phosphataseActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::PhosphataseActivity",
    signatures: [
      {
        name:        'PhosphataseActivityOfComplexAbundanceSignature',
        string_form: 'phosphataseActivity(F:complexAbundance)phosphataseActivity'
      },
      {
        name:        'PhosphataseActivityOfProteinAbundanceSignature',
        string_form: 'phosphataseActivity(F:proteinAbundance)phosphataseActivity'
      }
    ]
  },
  {
    name:        'Products',
    description: 'Denotes the products of a reaction',
    short: :products,
    long: :products,
    return_type: "BEL::Language::Version1::ReturnTypes::Products",
    signatures: [
      {
        name:        'ProductsSignature',
        string_form: 'products(F:abundance...)products'
      }
    ]
  },
  {
    name:        'ProteinAbundance',
    description: 'Denotes the abundance of a protein',
    short: :p,
    long: :proteinAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::ProteinAbundance",
    signatures: [
      {
        name:        'ProteinAbundanceWithFusionSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithProteinModificationSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:proteinModification)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithSubstitutionSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:substitution)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithTruncationSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:truncation)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceSignature',
        string_form: 'proteinAbundance(E:proteinAbundance)proteinAbundance'
      }
    ]
  },
  {
    name:        'ProteinModification',
    description: 'Denotes a covalently modified protein abundance',
    short: :pmod,
    long: :proteinModification,
    return_type: "BEL::Language::Version1::ReturnTypes::ProteinModification",
    signatures: [
      {
        name:        'ProteinModificationWithCovalentAminoPositionSignature',
        string_form: 'proteinModification(E:*,E:*,E:*)proteinModification'
      },
      {
        name:        'ProteinModificationWithCovalentAminoSignature',
        string_form: 'proteinModification(E:*,E:*)proteinModification'
      },
      {
        name:        'ProteinModificationWithCovalentSignature',
        string_form: 'proteinModification(E:*)proteinModification'
      }
    ]
  },
  {
    name:        'Reactants',
    description: 'Denotes the reactants of a reaction',
    short: :reactants,
    long: :reactants,
    return_type: "BEL::Language::Version1::ReturnTypes::Reactants",
    signatures: [
      {
        name:        'ReactantsSignature',
        string_form: 'reactants(F:abundance...)reactants'
      }
    ]
  },
  {
    name:        'Reaction',
    description: 'Denotes the frequency or abundance of events in a reaction',
    short: :rxn,
    long: :reaction,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'ReactionSignature',
        string_form: 'reaction(F:reactants,F:products)abundance'
      },
    ]
  },
  {
    name:        'RibosylationActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts to perform post-translational modification of proteins',
    short: :ribo,
    long: :ribosylationActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::RibosylationActivity",
    signatures: [
      {
        name:        'RibosylationActivityWithComplexAbundanceSignature',
        string_form: 'ribosylationActivity(F:complexAbundance)ribosylationActivity'
      },
      {
        name:        'RibosylationActivityWithProteinAbundanceSignature',
        string_form: 'ribosylationActivity(F:proteinAbundance)ribosylationActivity'
      }
    ]
  },
  {
    name:        'RNAAbundance',
    description: 'Denotes the abundance of a gene',
    short: :r,
    long: :rnaAbundance,
    return_type: "BEL::Language::Version1::ReturnTypes::GeneAbundance",
    signatures: [
      {
        name:        'RNAAbundanceWithFusionSignature',
        string_form: 'rnaAbundance(E:rnaAbundance,F:fusion)geneAbundance'
      },
      {
        name:        'RNAAbundanceSignature',
        string_form: 'rnaAbundance(E:rnaAbundance)geneAbundance'
      }
    ]
  },
  {
    name:        'Substitution',
    description: 'Indicates the abundance of proteins with amino acid substitution sequence',
    short: :sub,
    long: :substitution,
    return_type: "BEL::Language::Version1::ReturnTypes::Substitution",
    signatures: [
      {
        name:        'SubstitutionWithReferencePositionVariantSignature',
        string_form: 'substitution(E:*,E:*,E:*)substitution'
      }
    ]
  },
  {
    name:        'TranscriptionalActivity',
    description: 'Denotes the frequency or abundance of events in which a member directly acts to control transcription of genes',
    short: :tscript,
    long: :transcriptionalActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::TranscriptionalActivity",
    signatures: [
      {
        name:        'TranscriptionalActivityOfComplexAbundanceSignature',
        string_form: 'transcriptionalActivity(F:complexAbundance)transcriptionalActivity'
      },
      {
        name:        'TranscriptionalActivityOfProteinAbundanceSignature',
        string_form: 'transcriptionalActivity(F:proteinAbundance)transcriptionalActivity'
      }
    ]
  },
  {
    name:        'Translocation',
    description: 'Denotes the frequency or abundance of events in which members move between locations',
    short: :tloc,
    long: :translocation,
    return_type: "BEL::Language::Version1::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'TranslocationSignature',
        string_form: 'translocation(F:abundance,E:abundance,E:abundance)abundance'
      }
    ]
  },
  {
    name:        'TransportActivity',
    description: 'Denotes the frequency or abundance of events in which a member directs acts to enable the directed movement of substances into, out of, within, or between cells',
    short: :tport,
    long: :transportActivity,
    return_type: "BEL::Language::Version1::ReturnTypes::TransportActivity",
    signatures: [
      {
        name:        'TransportActivityOfComplexAbundanceSignature',
        string_form: 'transportActivity(F:complexAbundance)transportActivity'
      },
      {
        name:        'TransportActivityOfProteinAbundanceSignature',
        string_form: 'transportActivity(F:proteinAbundance)transportActivity'
      }
    ]
  },
  {
    name:        'Truncation',
    description: 'Indicates an abundance of proteins with truncation sequence variants',
    short: :trunc,
    long: :truncation,
    return_type: "BEL::Language::Version1::ReturnTypes::Truncation",
    signatures: [
      {
        name:        'TruncationWithPositionSignature',
        string_form: 'truncation(E:*)truncation'
      }
    ]
  }
].freeze
