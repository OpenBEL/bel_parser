VERSION2_FUNCTIONS = [
  {
    name:        'Abundance',
    description: 'Denotes the abundance of an entity.',
    short: :a,
    long: :abundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'AbundanceSignature',
        description: 'Abundance signature.',
        string_form: 'abundance(E:abundance)abundance'
      },
      {
        name:        'AbundanceWithLocationSignature',
        description: 'AbundanceWithLocation signature.',
        string_form: 'abundance(E:abundance,F:location)abundance'
      },
      {
        name:        'AbundanceWithMolecularActivitySignature',
        description: 'AbundanceWithMolecularActivity signature.',
        string_form: 'abundance(E:abundance, F:molecularActivity)abundance'
      }
    ]
  },
  {
    name:        'Activity',
    description: 'Denotes the frequency or abundance of events in which a member acts as a causal agent at the molecular scale.',
    short: :act,
    long: :activity,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Activity",
    signatures: [
      {
        name:        'ActivitySignature',
        description: 'Molecular Activity of an abundance.',
        string_form: 'activity(F:abundance)activity'
      },
      {
        name:        'ActivityWithSpecificActivityTypeSignature',
        description: 'Type-specific Activity of an abundance.',
        string_form: 'activity(F:abundance, F:molecularActivity)activity'
      }
    ]
  },
  {
    name:        'BiologicalProcess',
    description: 'Denotes a process or population of events.',
    short: :bp,
    long: :biologicalProcess,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::BiologicalProcess",
    signatures: [
      {
        name: 'BiologicalProcessSignature',
        string_form: 'biologicalProcess(E:biologicalProcess)biologicalProcess'
      }
    ]
  },
  {
    name:        'CellSecretion',
    description: 'Denotes the frequency or abundance of events in which members of an abundance move from cells to regions outside of the cells.',
    short: :sec,
    long: :cellSecretion,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name: 'CellSecretionSignature',
        string_form: 'cellSecretion(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'CellSurfaceExpression',
    description: 'Denotes the frequency or abundance of events in which members of an abundance move to the surface of cells.',
    short: :surf,
    long: :cellSurfaceExpression,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name: 'CellSurfaceExpressionSignature',
        string_form: 'cellSurfaceExpression(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'ComplexAbundance',
    description: 'Denotes the abundance of a molecular complex.',
    short: :complex,
    long: :complexAbundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::ComplexAbundance",
    signatures: [
      {
        name:        'NamedComplexAbundanceSignature',
        string_form: 'complexAbundance(E:abundance)complexAbundance'
      },
      {
        name:        'NamedComplexAbundanceWithLocationSignature',
        string_form: 'complexAbundance(E:abundance,F:location)complexAbundance'
      },
      {
        name:        'ComposedComplexAbundanceSignature',
        string_form: 'complexAbundance(F:abundance...)complexAbundance'
      },
      {
        name:        'ComposedComplexAbundanceWithLocationSignature',
        string_form: 'complexAbundance(F:abundance...,F:location)complexAbundance'
      }
    ]
  },
  {
    name:        'CompositeAbundance',
    description: 'Denotes the frequency or abundance of events in which members are present.',
    short: :composite,
    long: :compositeAbundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'CompositeAbundanceSignature',
        string_form: 'compositeAbundance(F:abundance...)abundance'
      }
    ]
  },
  {
    name:        'Degradation',
    description: 'Denotes the frequency or abundance of events in which a member is degraded in some way such that it is no longer a member.',
    short: :deg,
    long: :degradation,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'DegradationSignature',
        string_form: 'degradation(F:abundance)abundance'
      }
    ]
  },
  {
    name:        'Fragment',
    description: 'Denotes a protein fragment, e.g., a product of proteolytic cleavage.',
    short: :frag,
    long: :fragment,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Fragment",
    signatures: [
      {
        name:        'FragmentWithRangeSignature',
        string_form: 'fragment(E:aminoAcidRange)abundance'
      },
      {
        name:        'FragmentWithRangeDescriptorSignature',
        string_form: 'fragment(E:aminoAcidRange,E:*)abundance'
      }
    ]
  },
  {
    name:        'FromLocation',
    description: 'Denotes the from cellular location of the abundance.',
    short: :fromLoc,
    long: :fromLocation,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::FromLocation",
    signatures: [
      {
        name:        'FromLocationSignature',
        string_form: 'fromLocation(E:location)fromLocation'
      }
    ]
  },
  {
    name:        'Fusion',
    description: 'Specifies the abundance of a protein translated from the fusion of a gene.',
    short: :fus,
    long: :fusion,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Fusion",
    signatures: [
      {
        name:        'FusionWithGeneEncodingSignature',
        string_form: 'fusion(E:geneAbundance,E:*,E:geneAbundance,E:*)fusion'
      },
      {
        name:        'FusionWithProteinEncodingSignature',
        string_form: 'fusion(E:proteinAbundance,E:*,E:proteinAbundance,E:*)fusion'
      },
      {
        name:        'FusionWithRNAEncodingSignature',
        string_form: 'fusion(E:rnaAbundance,E:*,E:rnaAbundance,E:*)fusion'
      }
    ]
  },
  {
    name:        'GeneAbundance',
    description: 'Denotes the abundance of a gene.',
    short: :g,
    long: :geneAbundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::GeneAbundance",
    signatures: [
      {
        name:        'GeneAbundanceSignature',
        string_form: 'geneAbundance(E:geneAbundance)geneAbundance'
      },
      {
        name:        'GeneAbundanceWithFusionSignature',
        string_form: 'geneAbundance(F:fusion)geneAbundance'
      },
      {
        name:        'GeneAbundanceWithLocationSignature',
        string_form: 'geneAbundance(E:abundance,F:location)geneAbundance'
      },
      {
        name:        'GeneAbundanceWithVariantSignature',
        string_form: 'geneAbundance(E:geneAbundance,F:variant)geneAbundance'
      }
    ]
  },
  {
    name:        'List',
    description: 'Groups a list of terms together.',
    short: :list,
    long: :list,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::List",
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
    name:        'Location',
    description: 'Denotes the cellular location of the abundance.',
    short: :list,
    long: :list,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::List",
    signatures: [
      {
        name:        'LocationSignature',
        string_form: 'location(E:location)location'
      }
    ]
  },
  {
    name:        'MicroRNAAbundance',
    description: 'Denotes the abundance of a processed, functional microRNA',
    short: :m,
    long: :microRNAAbundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::MicroRNAAbundance",
    signatures: [
      {
        name:        'MicroRNAAbundanceSignature',
        string_form: 'microRNAAbundance(E:microRNAAbundance)microRNAAbundance'
      },
      {
        name:        'MicroRNAAbundanceWithLocationSignature',
        string_form: 'microRNAAbundance(E:microRNAAbundance,F:location)microRNAAbundance'
      },
      {
        name:        'MicroRNAAbundanceWithVariantSignature',
        string_form: 'microRNAAbundance(E:microRNAAbundance,F:variant)microRNAAbundance'
      }
    ]
  },
  {
    name:        'MolecularActivity',
    description: 'Denotes the frequency or abundance of events in which a member acts as a causal agent at the molecular scale',
    short: :act,
    long: :molecularActivity,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::MolecularActivity",
    signatures: [
      {
        name:        'MolecularActivitySignature',
        string_form: 'molecularActivity(E:activity)molecularActivity'
      }
    ]
  },
  {
    name:        'Pathology',
    description: 'Denotes a disease or pathology process',
    short: :path,
    long: :pathology,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Pathology",
    signatures: [
      {
        name:        'PathologySignature',
        string_form: 'pathology(E:pathology)pathology'
      }
    ]
  },
  {
    name:        'Products',
    description: 'Denotes the products of a reaction',
    short: :products,
    long: :products,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Products",
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
    return_type: "BELParser::Language::Version2_0::ReturnTypes::ProteinAbundance",
    signatures: [
      {
        name:        'ProteinAbundanceSignature',
        string_form: 'proteinAbundance(E:proteinAbundance)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithFragmentSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:fragment)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithFusionSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithLocationSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:location)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithProteinModificationSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:proteinModification...)proteinAbundance'
      },
      {
        name:        'ProteinAbundanceWithVariantSignature',
        string_form: 'proteinAbundance(E:proteinAbundance,F:variant)proteinAbundance'
      }
    ]
  },
  {
    name:        'ProteinModification',
    description: 'Denotes a covalently modified protein abundance',
    short: :pmod,
    long: :proteinModification,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::ProteinModification",
    signatures: [
      {
        name:        'ProteinModificationWithType',
        string_form: 'proteinModification(E:modificationType)proteinModification'
      },
      {
        name:        'ProteinModificationWithTypeAmino',
        string_form: 'proteinModification(E:modificationType,E:*)proteinModification'
      },
      {
        name:        'ProteinModificationWithTypeAminoPosition',
        string_form: 'proteinModification(E:modificationType,E:*,E:*)proteinModification'
      }
    ]
  },
  {
    name:        'Reactants',
    description: 'Denotes the reactants of a reaction',
    short: :reactants,
    long: :reactants,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Reactants",
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
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'ReactionSignature',
        string_form: 'reaction(F:reactants,F:products)abundance'
      },
    ]
  },
  {
    name:        'RNAAbundance',
    description: 'Denotes the abundance of a gene',
    short: :r,
    long: :rnaAbundance,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::GeneAbundance",
    signatures: [
      {
        name:        'RNAAbundance',
        description: 'RNAAbundance signature.',
        string_form: 'rnaAbundance(E:rnaAbundance)geneAbundance'
      },
      {
        name:        'RNAAbundanceWithFusion',
        description: 'RNAAbundanceWithFusion signature.',
        string_form: 'rnaAbundance(F:fusion)geneAbundance'
      },
      {
        name:        'RNAAbundanceWithLocation',
        description: 'RNAAbundanceWithLocation signature.',
        string_form: 'rnaAbundance(E:rnaAbundance,F:location)geneAbundance'
      },
      {
        name:        'RNAAbundanceWithVariant',
        description: 'RNAAbundanceWithVariant signature.',
        string_form: 'rnaAbundance(E:rnaAbundance,F:variant)geneAbundance'
      }
    ]
  },
  {
    name:        'ToLocation',
    description: 'Denotes the to cellular location of the abundance.',
    short: :toLoc,
    long: :toLocation,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::ToLocation",
    signatures: [
      {
        name:        'ToLocationSignature',
        string_form: 'toLocation(E:location)toLocation'
      }
    ]
  },
  {
    name:        'Translocation',
    description: 'Denotes the frequency or abundance of events in which members move between locations',
    short: :tloc,
    long: :translocation,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Abundance",
    signatures: [
      {
        name:        'Translocation',
        string_form: 'translocation(F:abundance,F:fromLocation,F:toLocation)abundance'
      }
    ]
  },
  {
    name:        'Variant',
    description: 'Denotes a sequence variant of the specified abundance.',
    short: :var,
    long: :variant,
    return_type: "BELParser::Language::Version2_0::ReturnTypes::Variant",
    signatures: [
      {
        name:        'Variant',
        string_form: 'variant(E:hgvsVariantDescription)variant'
      }
    ]
  }
].freeze
