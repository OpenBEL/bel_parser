VERSION1_SIGNATURES = [
  {
    name:        'Abundance',
    description: 'Abundance signature.',
    string_form: 'abundance(E:abundance)abundance'
  },
  {
    name:        'BiologicalProcess',
    description: 'BiologicalProcess signature.',
    string_form: 'biologicalProcess(E:biologicalProcess)biologicalProcess'
  },
  {
    name:        'CatalyticActivityOfComplexAbundance',
    description: 'CatalyticActivityOfComplexAbundance signature.',
    string_form: 'catalyticActivity(F:complexAbundance)catalyticActivity'
  },
  {
    name:        'CatalyticActivityOfProteinAbundance',
    description: 'CatalyticActivityOfProteinAbundance signature.',
    string_form: 'catalyticActivity(F:proteinAbundance)catalyticActivity'
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
    name:        'ChaperoneActivityOfComplexAbundance',
    description: 'ChaperoneActivityOfComplexAbundance signature.',
    string_form: 'chaperoneActivity(F:complexAbundance)chaperoneActivity'
  },
  {
    name:        'ChaperoneActivityOfProteinAbundance',
    description: 'ChaperoneActivityOfProteinAbundance signature.',
    string_form: 'chaperoneActivity(F:proteinAbundance)chaperoneActivity'
  },
  {
    name:        'NamedComplexAbundance',
    description: 'NamedComplexAbundance signature.',
    string_form: 'complexAbundance(E:abundance)complexAbundance'
  },
  {
    name:        'ComposedComplexAbundance',
    description: 'ComposedComplexAbundance signature.',
    string_form: 'complexAbundance(F:abundance...)complexAbundance'
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
    name:        'FusionGeneAbundanceWithBreakpoints',
    description: 'FusionGeneAbundanceWithBreakpoints signature.',
    string_form: 'fusion(E:geneAbundance,E:*,E:*)fusion'
  },
  {
    name:        'FusionGeneAbundance',
    description: 'FusionGeneAbundance signature.',
    string_form: 'fusion(E:geneAbundance)fusion'
  },
  {
    name:        'FusionProteinAbundanceWithBreakpoints',
    description: 'FusionProteinAbundanceWithBreakpoints signature.',
    string_form: 'fusion(E:proteinAbundance,E:*,E:*)fusion'
  },
  {
    name:        'FusionProteinAbundance',
    description: 'FusionProteinAbundance signature.',
    string_form: 'fusion(E:proteinAbundance)fusion'
  },
  {
    name:        'FusionRNAAbundanceWithBreakpoints',
    description: 'FusionRNAAbundanceWithBreakpoints signature.',
    string_form: 'fusion(E:rnaAbundance,E:*,E:*)fusion'
  },
  {
    name:        'FusionRNAAbundance',
    description: 'FusionRNAAbundance signature.',
    string_form: 'fusion(E:rnaAbundance)fusion'
  },
  {
    name:        'GeneAbundanceWithFusion',
    description: 'GeneAbundanceWithFusion signature.',
    string_form: 'geneAbundance(E:geneAbundance,F:fusion)geneAbundance'
  },
  {
    name:        'GeneAbundance',
    description: 'GeneAbundance signature.',
    string_form: 'geneAbundance(E:geneAbundance)geneAbundance'
  },
  {
    name:        'GTPBoundActivityOfComplexAbundance',
    description: 'GTPBoundActivityOfComplexAbundance signature.',
    string_form: 'gtpBoundActivity(F:complexAbundance)gtpBoundActivity'
  },
  {
    name:        'GTPBoundActivityOfProteinAbundance',
    description: 'GTPBoundActivityOfProteinAbundance signature.',
    string_form: 'gtpBoundActivity(F:proteinAbundance)gtpBoundActivity'
  },
  {
    name:        'KinaseActivityOfComplexAbundance',
    description: 'KinaseActivityOfComplexAbundance signature.',
    string_form: 'kinaseActivity(F:complexAbundance)kinaseActivity'
  },
  {
    name:        'KinaseActivityOfProteinAbundance',
    description: 'KinaseActivityOfProteinAbundance signature.',
    string_form: 'kinaseActivity(F:proteinAbundance)kinaseActivity'
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
    name:        'MicroRNAAbundance',
    description: 'MicroRNAAbundance signature.',
    string_form: 'microRNAAbundance(E:microRNAAbundance)microRNAAbundance'
  },
  {
    name:        'MolecularActivityOfAbundance',
    description: 'MolecularActivityOfAbundance signature.',
    string_form: 'molecularActivity(F:abundance)molecularActivity'
  },
  {
    name:        'Pathology',
    description: 'Pathology signature.',
    string_form: 'pathology(E:pathology)pathology'
  },
  {
    name:        'PeptidaseActivityOfComplexAbundance',
    description: 'PeptidaseActivityOfComplexAbundance signature.',
    string_form: 'peptidaseActivity(F:complexAbundance)peptidaseActivity'
  },
  {
    name:        'PeptidaseActivityOfProteinAbundance',
    description: 'PeptidaseActivityOfProteinAbundance signature.',
    string_form: 'peptidaseActivity(F:proteinAbundance)peptidaseActivity'
  },
  {
    name:        'PhosphataseActivityOfComplexAbundance',
    description: 'PhosphataseActivityOfComplexAbundance signature.',
    string_form: 'phosphataseActivity(F:complexAbundance)phosphataseActivity'
  },
  {
    name:        'PhosphataseActivityOfProteinAbundance',
    description: 'PhosphataseActivityOfProteinAbundance signature.',
    string_form: 'phosphataseActivity(F:proteinAbundance)phosphataseActivity'
  },
  {
    name:        'Products',
    description: 'Products signature.',
    string_form: 'products(F:abundance...)products'
  },
  {
    name:        'ProteinAbundanceWithFusion',
    description: 'ProteinAbundanceWithFusion signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:fusion)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithProteinModification',
    description: 'ProteinAbundanceWithProteinModification signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:proteinModification)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithSubstitution',
    description: 'ProteinAbundanceWithSubstitution signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:substitution)proteinAbundance'
  },
  {
    name:        'ProteinAbundanceWithTruncation',
    description: 'ProteinAbundanceWithTruncation signature.',
    string_form: 'proteinAbundance(E:proteinAbundance,F:truncation)proteinAbundance'
  },
  {
    name:        'ProteinAbundance',
    description: 'ProteinAbundance signature.',
    string_form: 'proteinAbundance(E:proteinAbundance)proteinAbundance'
  },
  {
    name:        'ProteinModificationWithCovalentAminoPosition',
    description: 'ProteinModificationWithCovalentAminoPosition signature.',
    string_form: 'proteinModification(E:*,E:*,E:*)proteinModification'
  },
  {
    name:        'ProteinModificationWithCovalentAmino',
    description: 'ProteinModificationWithCovalentAmino signature.',
    string_form: 'proteinModification(E:*,E:*)proteinModification'
  },
  {
    name:        'ProteinModificationWithCovalent',
    description: 'ProteinModificationWithCovalent signature.',
    string_form: 'proteinModification(E:*)proteinModification'
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
    name:        'RibosylationActivityWithComplexAbundance',
    description: 'RibosylationActivityWithComplexAbundance signature.',
    string_form: 'ribosylationActivity(F:complexAbundance)ribosylationActivity'
  },
  {
    name:        'RibosylationActivityWithProteinAbundance',
    description: 'RibosylationActivityWithProteinAbundance signature.',
    string_form: 'ribosylationActivity(F:proteinAbundance)ribosylationActivity'
  },
  {
    name:        'RNAAbundanceWithFusion',
    description: 'RNAAbundanceWithFusion signature.',
    string_form: 'rnaAbundance(E:rnaAbundance,F:fusion)geneAbundance'
  },
  {
    name:        'RNAAbundance',
    description: 'RNAAbundance signature.',
    string_form: 'rnaAbundance(E:rnaAbundance)geneAbundance'
  },
  {
    name:        'SubstitutionWithReferencePositionVariant',
    description: 'SubstitutionWithReferencePositionVariant signature.',
    string_form: 'substitution(E:*,E:*,E:*)substitution'
  },
  {
    name:        'TranscriptionalActivityOfComplexAbundance',
    description: 'TranscriptionalActivityOfComplexAbundance signature.',
    string_form: 'transcriptionalActivity(F:complexAbundance)transcriptionalActivity'
  },
  {
    name:        'TranscriptionalActivityOfProteinAbundance',
    description: 'TranscriptionalActivityOfProteinAbundance signature.',
    string_form: 'transcriptionalActivity(F:proteinAbundance)transcriptionalActivity'
  },
  {
    name:        'Translocation',
    description: 'Translocation signature.',
    string_form: 'translocation(F:abundance,E:abundance,E:abundance)abundance'
  },
  {
    name:        'TransportActivityOfComplexAbundance',
    description: 'TransportActivityOfComplexAbundance signature.',
    string_form: 'transportActivity(F:complexAbundance)transportActivity'
  },
  {
    name:        'TransportActivityOfProteinAbundance',
    description: 'TransportActivityOfProteinAbundance signature.',
    string_form: 'transportActivity(F:proteinAbundance)transportActivity'
  },
  {
    name:        'TruncationWithPosition',
    description: 'TruncationWithPosition signature.',
    string_form: 'truncation(E:*)truncation'
  }
].freeze
