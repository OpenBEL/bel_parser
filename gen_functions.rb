require 'erb'

FUNCTIONS = {
  a: {
    short: :a,
    long: :abundance,
    description: 'Denotes the abundance of an entity',
    return_type: :a,
    signatures: [
    ]
  },
  bp: {
    short: :bp,
    long: :biologicalProcess,
    description: 'Denotes a process or population of events',
    return_type: :bp,
    signatures: [
    ]
  },
  cat: {
    short: :cat,
    long: :catalyticActivity,
    description: 'Denotes the frequency or abundance of events where a
member acts as an enzymatic catalyst of biochecmial reactions',
    return_type: :a,
    signatures: [
    ]
  },
  sec: {
    short: :sec,
    long: :cellSecretion,
    description: 'Denotes the frequency or abundance of events in which
members of an abundance move from cells to regions outside of the cells',
    return_type: :a,
    signatures: [
    ]
  },
  surf: {
    short: :surf,
    long: :cellSurfaceExpression,
    description: 'Denotes the frequency or abundance of events in which
members of an abundance move to the surface of cells',
    return_type: :a,
    signatures: [
    ]
  },
  chap: {
    short: :chap,
    long: :chaperoneActivity,
    description: 'Denotes the frequency or abundance of events in which a
member binds to some substrate and acts as a chaperone for the substrate',
    return_type: :a,
    signatures: [
    ]
  },
  complex: {
    short: :complex,
    long: :complexAbundance,
    description: 'Denotes the abundance of a molecular complex',
    return_type: :complex,
    signatures: [
    ]
  },
  composite: {
    short: :composite,
    long: :compositeAbundance,
    description: 'Denotes the frequency or abundance of events in which
members are present',
    return_type: :a,
    signatures: [
    ]
  },
  deg: {
    short: :deg,
    long: :degradation,
    description: 'Denotes the frequency or abundance of events in which a
member is degraded in some way such that it is no longer a member',
    return_type: :a,
    signatures: [
    ]
  },
  fus: {
    short: :fus,
    long: :fusion,
    description: 'Specifies the abundance of a protein translated from the
fusion of a gene',
    return_type: :fus,
    signatures: [
    ]
  },
  g: {
    short: :g,
    long: :geneAbundance,
    description: 'Denotes the abundance of a gene',
    return_type: :g,
    signatures: [
    ]
  },
  gtp: {
    short: :gtp,
    long: :gtpBoundActivity,
    description: 'Denotes the frequency or abundance of events in which a
member of a G-protein abundance is GTP-bound',
    return_type: :a,
    signatures: [
    ]
  },
  kin: {
    short: :kin,
    long: :kinaseActivity,
    description: 'Denotes the frequency or abundance of events in which a
member acts as a kinase, performing enzymatic phosphorylation of a substrate',
    return_type: :a,
    signatures: [
    ]
  },
  list: {
    short: :list,
    long: :list,
    description: 'Groups a list of terms together',
    return_type: :list,
    signatures: [
    ]
  },
  m: {
    short: :m,
    long: :microRNAAbundance,
    description: 'Denotes the abundance of a processed, functional microRNA',
    return_type: :m,
    signatures: [
    ]
  },
  act: {
    short: :act,
    long: :molecularActivity,
    description: 'Denotes the frequency or abundance of events in which a
member acts as a causal agent at the molecular scale',
    return_type: :a,
    signatures: [
    ]
  },
  path: {
    short: :path,
    long: :pathology,
    description: 'Denotes a disease or pathology process',
    return_type: :path,
    signatures: [
    ]
  },
  pep: {
    short: :pep,
    long: :peptidaseActivity,
    description: 'Denotes the frequency or abundance of events in which a
member acts to cleave a protein',
    return_type: :a,
    signatures: [
    ]
  },
  phos: {
    short: :phos,
    long: :phosphataseActivity,
    description: 'Denotes the frequency or abundance of events in which a
member acts as a phosphatase',
    return_type: :a,
    signatures: [
    ]
  },
  products: {
    short: :products,
    long: :products,
    description: 'Denotes the products of a reaction',
    return_type: :products,
    signatures: [
    ]
  },
  p: {
    short: :p,
    long: :proteinAbundance,
    description: 'Denotes the abundance of a protein',
    return_type: :p,
    signatures: [
    ]
  },
  pmod: {
    short: :pmod,
    long: :proteinModification,
    description: 'Denotes a covalently modified protein abundance',
    return_type: :pmod,
    signatures: [
    ]
  },
  reactants: {
    short: :reactants,
    long: :reactants,
    description: 'Denotes the reactants of a reaction',
    return_type: :reactants,
    signatures: [
    ]
  },
  rxn: {
    short: :rxn,
    long: :reaction,
    description: 'Denotes the frequency or abundance of events in a reaction',
    return_type: :a,
    signatures: [
    ]
  },
  ribo: {
    short: :ribo,
    long: :ribosylationActivity,
    description: 'Denotes the frequency or abundance of events in which a
member acts to perform post-translational modification of proteins',
    return_type: :a,
    signatures: [
    ]
  },
  r: {
    short: :r,
    long: :rnaAbundance,
    description: 'Denotes the abundance of a gene',
    return_type: :g,
    signatures: [
    ]
  },
  sub: {
    short: :sub,
    long: :substitution,
    description: 'Indicates the abundance of proteins with amino acid
substitution sequence',
    return_type: :sub,
    signatures: [
    ]
  },
  tscript: {
    short: :tscript,
    long: :transcriptionalActivity,
    description: 'Denotes the frequency or abundance of events in which a
member directly acts to control transcription of genes',
    return_type: :a,
    signatures: [
    ]
  },
  tloc: {
    short: :tloc,
    long: :translocation,
    description: 'Denotes the frequency or abundance of events in which
members move between locations',
    return_type: :a,
    signatures: [
    ]
  },
  tport: {
    short: :tport,
    long: :transportActivity,
    description: 'Denotes the frequency or abundance of events in which a
member directs acts to enable the directed movement of substances into, out
of, within, or between cells',
    return_type: :a,
    signatures: [
    ]
  },
  trunc: {
    short: :trunc,
    long: :truncation,
    description: 'Indicates an abundance of proteins with truncation sequence
variants',
    return_type: :trunc,
    signatures: [
    ]
  }
}.freeze

erb = ERB.new(File.read('function_template.erb'))
FUNCTIONS.each do |_, opts|
  opts[:class_name] = opts[:long].capitalize
  opts[:class_doc]  = opts[:long].capitalize
  ruby_class_str = erb.result(binding)
  file_name      = opts[:long].to_s.gsub(/([A-Z])/) do
    "_#{Regexp.last_match[1].downcase}"
  end
  File.write(
    "lib/bel/language/version1/functions/#{file_name}.rb",
    ruby_class_str)
end
