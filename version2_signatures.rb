VERSION1_SIGNATURES = [
  {
    name:        'Abundance',
    description: 'Abundance signature.',
    string_form: 'abundance(E:abundance)abundance'
  },
  {
    name:        'AbundanceWithLocation',
    description: 'AbundanceWithLocation signature.',
    string_form: 'abundance(E:abundance,F:location)abundance'
  },
  {
    name:        'AbundanceWithMolecularActivity',
    description: 'AbundanceWithMolecularActivity signature.',
    string_form: 'abundance(E:abundance, F:molecularActivity)abundance'
  },
  {
    name:        'BiologicalProcess',
    description: 'BiologicalProcess signature.',
    string_form: 'biologicalProcess(E:biologicalProcess)biologicalProcess'
  },
  {
    name:        'CellSecretion',
    description: 'CellSecretion signature.',
    string_form: 'cellSecretion(F:abundance)abundance'
  },
  {
    name:        'CellSurfaceExpression',
    description: 'CellSurfaceExpression signature.',
    string_form: 'cellSurfaceExpression(F:abundance)abundance'
  },
  {
    name:        'NamedComplexAbundance',
    description: 'NamedComplexAbundance signature.',
    string_form: 'complexAbundance(E:abundance)complexAbundance'
  },
  {
    name:        'NamedComplexAbundanceWithLocation',
    description: 'NamedComplexAbundanceWithLocation signature.',
    string_form: 'complexAbundance(E:abundance,F:location)complexAbundance'
  },
  {
    name:        'ComposedComplexAbundance',
    description: 'ComposedComplexAbundance signature.',
    string_form: 'complexAbundance(F:abundance...)complexAbundance'
  },
  {
    name:        'ComposedComplexAbundanceWithLocation',
    description: 'ComposedComplexAbundanceWithLocation signature.',
    string_form: 'complexAbundance(F:abundance...,F:location)complexAbundance'
  },
  {
    name:        'CompositeAbundance',
    description: 'CompositeAbundance signature.',
    string_form: 'compositeAbundance(F:abundance...)abundance'
  },
  {
    name:        'Degradation',
    description: 'Degradation signature.',
    string_form: 'degradation(F:abundance)abundance'
  },
  {
    name:        'FragmentWithRange',
    description: 'FragmentWithRange signature.',
    # TODO: Represent amino acid with a specific value pattern.
    string_form: 'fragment(E:aminoAcidRange)abundance'
  },
  {
    name:        'FragmentWithRangeDescriptor',
    description: 'FragmentWithRangeDescriptor signature.',
    # TODO: Represent amino acid with a specific value pattern.
    string_form: 'fragment(E:aminoAcidRange,E:*)abundance'
  },
  {
    name:        'FromLoc',
    description: 'FromLoc signature.',
    string_form: 'fromLoc(E:location)fromLoc'
  },
  {
    name:        'FusionWithGeneEncoding',
    description: 'FusionWithGeneEncoding signature.',
    string_form: 'fusion(E:geneAbundance,E:*,E:geneAbundance,E:*)fusion'
  },
  {
    name:        'FusionWithProteinEncoding',
    description: 'FusionWithProteinEncoding signature.',
    string_form: 'fusion(E:proteinAbundance,E:*,E:proteinAbundance,E:*)fusion'
  },
  {
    name:        'FusionWithRNAEncoding',
    description: 'FusionWithRNAEncoding signature.',
    string_form: 'fusion(E:rnaAbundance,E:*,E:rnaAbundance,E:*)fusion'
  },
  {
    name:        'GeneAbundance',
    description: 'GeneAbundance signature.',
    string_form: 'geneAbundance(E:geneAbundance)geneAbundance'
  },
  {
    name:        'GeneAbundanceWithFusion',
    description: 'GeneAbundanceWithFusion signature.',
    string_form: 'geneAbundance(F:fusion)geneAbundance'
  },
  {
    name:        'GeneAbundanceWithLocation',
    description: 'GeneAbundanceWithLocation signature.',
    string_form: 'geneAbundance(E:abundance,F:location)geneAbundance'
  },
  {
    name:        'GeneAbundanceWithVariant',
    description: 'GeneAbundanceWithVariant signature.',
    string_form: 'geneAbundance(E:geneAbundance,F:variant)geneAbundance'
  },
  {
    name:        'ListOfAbundanceEncoding',
    description: 'ListOfAbundanceEncoding signature.',
    string_form: 'list(E:abundance...)list'
  },
  {
    name:        'ListOfAbundance',
    description: 'ListOfAbundance signature.',
    string_form: 'list(F:abundance...)list'
  },
  {
    name:        'Location',
    description: 'Location signature.',
    string_form: 'location(E:location)location'
  },
  {
    name:        'MicroRNAAbundance',
    description: 'MicroRNAAbundance signature.',
    string_form: 'microRNAAbundance(E:microRNAAbundance)microRNAAbundance'
  },
  {
    name:        'MicroRNAAbundanceWithLocation',
    description: 'MicroRNAAbundanceWithLocation signature.',
    string_form: 'microRNAAbundance(E:microRNAAbundance,F:location)microRNAAbundance'
  },
  {
    name:        'MicroRNAAbundanceWithVariant',
    description: 'MicroRNAAbundanceWithVariant signature.',
    string_form: 'microRNAAbundance(E:microRNAAbundance,F:variant)microRNAAbundance'
  },
  {
    name:        'MolecularActivity',
    description: 'MolecularActivity signature.',
    string_form: 'molecularActivity(E:activity)molecularActivity'
  },
  {
    name:        'Pathology',
    description: 'Pathology signature.',
    string_form: 'pathology(E:pathology)pathology'
  },
  {
    name:        'Products',
    description: 'Products signature.',
    string_form: 'products(F:abundance...)products'
  },
  {
    name:        'ProteinAbundance',
    description: 'ProteinAbundance signature.',
    string_form: 'proteinAbundance(E:proteinAbundance)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithFragment',
    description: 'ProteinAbundanceWithFragment signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:fragment)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithFusion',
    description: 'ProteinAbundanceWithFusion signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithLocation',
    description: 'ProteinAbundanceWithLocation signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:location)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithProteinModification',
    description: 'ProteinAbundanceWithProteinModification signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:proteinModification...)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithVariant',
    description: 'ProteinAbundanceWithVariant signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:variant)proteinAbundance'
  },
  {
    name:        'ProteinModificationWithType',
    description: 'ProteinModificationWithType signature.',
    string_form: 'proteinModification(E:modificationType)proteinModification'
  },
  {
    name:        'ProteinModificationWithTypeAmino',
    description: 'ProteinModificationWithTypeAmino signature.',
    string_form: 'proteinModification(E:modificationType,E:*)proteinModification'
  },
  {
    name:        'ProteinModificationWithTypeAminoPosition',
    description: 'ProteinModificationWithTypeAminoPosition signature.',
    string_form: 'proteinModification(E:modificationType,E:*,E:*)proteinModification'
  },
  {
    name:        'Reactants',
    description: 'Reactants signature.',
    string_form: 'reactants(F:abundance...)reactants'
  },
  {
    name:        'Reaction',
    description: 'Reaction signature.',
    string_form: 'reaction(F:reactants,F:products)abundance'
  },
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
  },
  {
    name:        'ToLoc',
    description: 'ToLoc signature.',
    string_form: 'toLoc(E:location)toLoc'
  },
  {
    name:        'Translocation',
    description: 'Translocation signature.',
    string_form: 'translocation(F:abundance,F:fromLoc,F:toLoc)abundance'
  },
  {
    name:        'Variant',
    description: 'Variant signature.',
    # TODO: Represent hgvsVariantDescription with a specific value pattern.
    string_form: 'variant(E:hgvsVariantDescription)variant'
  }
].freeze
