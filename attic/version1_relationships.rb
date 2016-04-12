VERSION1_RELATIONSHIPS = [
    {
        :description => " +A -> B+ -  For terms A and B, +A increases B or A -> B+ indicates that increases in A have been observed to cause increases in B. +A increases B+ also represents cases where decreases in A have been observed to cause decreases in B, for example, in recording the results of gene deletion or other inhibition experiments. A is a BEL Term and B is either a BEL Term or a BEL Statement. The relationship does not indicate that the changes in A are either necessary for changes in B, nor does it indicate that changes in A are sufficient to cause changes in B.",
               :long => "increases",
              :short => "->"
    },
    {
        :description => " +A -| B+ -  For terms A and B, +A decreases B or A -| B+ indicates that increases in A have been observed to cause decreases in B. +A decreases B+ also represents cases where decreases in A have been observed to cause increases in B, for example, in recording the results of gene deletion or other inhibition experiments. A is a BEL Term and B is either a BEL Term or a BEL Statement. The relationship does not indicate that the changes in A are either necessary for changes in B, nor does it indicate that changes in A are sufficient to cause changes in B.",
               :long => "decreases",
              :short => "-|"
    },
    {
        :description => " +A => B+ -  For terms A and B, +A directlyIncreases B or A => B+ indicate A increases B and that the mechanism of the causal relationship is based on physical interaction of entities related to A and B. This is a direct version of the increases relationship.",
               :long => "directlyIncreases",
              :short => "=>"
    },
    {
        :description => " +A =| B+ -  For terms A and B, +A directlyDecreases B or A =| B+ indicates A decreases B and that the mechanism of the causal relationship is based on physical interaction of entities related to A and B. This is a direct version of the decreases relationship.",
               :long => "directlyDecreases",
              :short => "=|"
    },
    {
        :description => " +A causesNoChange B+ -  For terms A and B, +A causesNoChange B+ indicates that B was observed not to change in response to changes in A. Statements using this relationship correspond to cases where explicit measurement of B demonstrates lack of significant change, not for cases where the state of B is unknown.",
               :long => "causesNoChange",
              :short => "causesNoChange"
    },
    {
        :description => " +A positiveCorrelation B+ -  For terms A and B, +A positiveCorrelation B+ indicates that changes in A and B have been observed to be positively correlated, thus B positiveCorrelation A is equivalent to A positiveCorrelation B.",
               :long => "positiveCorrelation",
              :short => "positiveCorrelation"
    },
    {
        :description => " +A negativeCorrelation B+ -  For terms A and B, +A negativeCorrelation B+ indicates that changes in A and B have been observed to be negatively correlated. The order of the subject and object does not affect the interpretation of the statement, thus B negativeCorrelation A is equivalent to A negativeCorrelation B.",
               :long => "negativeCorrelation",
              :short => "negativeCorrelation"
    },
    {
        :description => " +R >> P+ -  For rnaAbundance term R and proteinAbundance term P, +R translatedTo P+ or +R >> P+ indicates that members of P are produced by the translation of members of R. For example: +r(HGNC:AKT1) >> p(HGNC:AKT1)+ indicates that AKT1 protein is produced by translation of AKT1 RNA.",
               :long => "translatedTo",
              :short => ">>"
    },
    {
        :description => " +G :> R+ -  For rnaAbundance term R and geneAbundance term G, +G transcribedTo R+ or +G :> R+ indicates that members of R are produced by the transcription of members of G. For example: +g(HGNC:AKT1) :> r(HGNC:AKT1)+ indicates that the human AKT1 RNA is transcribed from the human AKT1 gene.",
               :long => "transcribedTo",
              :short => ":>"
    },
    {
        :description => " +A isA B+ -  For terms A and B, +A isA B+ indicates that A is a subset of B. All terms in BEL represent classes, but given that classes implicitly have instances, one can also interpret +A isA B+ to mean that any instance of A must also be an instance of B. This relationship can be used to represent GO and MeSH hierarchies: +pathology(MESH:Psoriasis) isA pathology(MESH:\"Skin Diseases\")+",
               :long => "isA",
              :short => "isA"
    },
    {
        :description => " +A subProcessOf B+ -  For process, activity, or transformation term A and process term B, +A subProcessOf B+ indicates that instances of process B, by default, include one or more instances of A in their composition. For example, the reduction of HMG-CoA to mevalonate is a subprocess of cholesterol biosynthesis: <pre> <code> rxn(reactants(a(CHEBI:\"(S)-3-hydroxy-3-methylglutaryl-CoA\"),\\ a(CHEBI:NADPH), a(CHEBI:hydron)), products(a(CHEBI:Mevalonate),\\ a(CHEBI:\"CoA-SH\"), a(CHEBI:\"NADP+\"))) subProcessOf bp(GO:\"cholesterol\\ biosynthetic process\") </code> </pre>",
               :long => "subProcessOf",
              :short => "subProcessOf"
    },
    {
        :description => " +A subProcessOf B+ -  For process, activity, or transformation term A and process term B, +A subProcessOf B+ indicates that instances of process B, by default, include one or more instances of A in their composition. For example, the reduction of HMG-CoA to mevalonate is a subprocess of cholesterol biosynthesis: <pre> <code> rxn(reactants(a(CHEBI:\"(S)-3-hydroxy-3-methylglutaryl-CoA\"),\\ a(CHEBI:NADPH), a(CHEBI:hydron)), products(a(CHEBI:Mevalonate),\\ a(CHEBI:\"CoA-SH\"), a(CHEBI:\"NADP+\"))) subProcessOf bp(GO:\"cholesterol\\ biosynthetic process\") </code> </pre>",
               :long => "subProcessOf",
              :short => "subProcessOf"
    },
    {
        :description => " +A rateLimitingStepOf B+ -  For process, activity, or transformation term A and process term B, +A rateLimitingStepOf B+ indicates +A subProcessOf B+ and +A -> B+. For example, the catalytic activity of HMG CoA reductase is a rate-limiting step for cholesterol biosynthesis: <pre> <code> cat(p(HGNC:HMGCR)) rateLimitingStepOf\\ bp(GO:\"cholesterol biosynthetic process\") </code> </pre>",
               :long => "rateLimitingStepOf",
              :short => "rateLimitingStepOf"
    },
    {
        :description => " +A rateLimitingStepOf B+ -  For process, activity, or transformation term A and process term B, +A rateLimitingStepOf B+ indicates +A subProcessOf B+ and +A -> B+. For example, the catalytic activity of HMG CoA reductase is a rate-limiting step for cholesterol biosynthesis: <pre> <code> cat(p(HGNC:HMGCR)) rateLimitingStepOf\\ bp(GO:\"cholesterol biosynthetic process\") </code> </pre>",
               :long => "rateLimitingStepOf",
              :short => "rateLimitingStepOf"
    },
    {
        :description => " +A biomarkerFor P+ -  For term A and process term P, +A biomarkerFor P+ indicates that changes in or detection of A is used in some way to be a biomarker for pathology or biological process P.",
               :long => "biomarkerFor",
              :short => "biomarkerFor"
    },
    {
        :description => " +A prognosticBiomarkerFor P+ -  For term A and process term P, +A prognosticBiomarkerFor P+ indicates that changes in or detection of A is used in some way to be a prognostic biomarker for the subsequent development of pathology or biological process P.",
               :long => "prognosticBiomarkerFor",
              :short => "prognosticBiomarkerFor"
    },
    {
        :description => " +A orthologous B+ -  For geneAbundance terms A and B, +A orthologousTo B+ indicates that A and B represent abundances of genes in different species which are sequence similar and which are therefore presumed to share a common ancestral gene. For example, +g(HGNC:AKT1) orthologousTo g(MGI:AKT1)+ indicates that the mouse and human AKT1 genes are orthologous.",
               :long => "orthologous",
              :short => "orthologous"
    },
    {
        :description => " +A analogous B+ -  For terms A and B, +A analogousTo B+ indicates that A and B represent abundances or molecular activities in different species which function in a similar manner.",
               :long => "analogous",
              :short => "analogous"
    },
    {
        :description => " +A -- B+ -  For terms A and B, +A association B+ or +A -- B+ indicates that A and B are associated in an unspecified manner. This relationship is used when not enough information about the association is available to describe it using more specific relationships, like increases or positiveCorrelation.",
               :long => "association",
              :short => "--"
    },
    {
        :description => " +A hasMembers (B, C, D)+ -  The hasMembers relationship is a special form which enables the assignment of multiple member classes in a single statement where the object of the statement is a set of abundance terms. A statement using hasMembers is exactly equivalent to multiple hasMember statements. A term may not appear in both the subject and object of a of the same hasMembers statement. For the abundance terms A, B, C and D, +A hasMembers B, C, D+ indicates that A is defined by its member abundance classes B, C and D.",
               :long => "hasMembers",
              :short => "hasMembers"
    },
    {
        :description => " +A hasComponents (B, C, D)+ -  The hasComponents relationship is a special form which enables the assignment of multiple complex components in a single statement where the object of the statement is a set of abundance terms. A statement using hasComponents is exactly equivalent to multiple hasComponent statements. A term may not appear in both the subject and object of the same hasComponents statement. For the abundance terms A, B, C and D, +A hasComponents B, C, D+ indicates that A has components B, C and D.",
               :long => "hasComponents",
              :short => "hasComponents"
    },
    {
        :description => " +A hasMember A1+ -  For term abundances A and B, +A hasMember B+ designates B as a member class of A. A member class is a distinguished sub-class. A is defined as a group by all of the members assigned to it. The member classes may or may not be overlapping and may or may not entirely cover all instances of A. A term may not appear in both the subject and object of the same hasMember statement.",
               :long => "hasMember",
              :short => "hasMember"
    },
    {
        :description => " +A hasComponent A1+ -  For complexAbundance term A and abundance term B, +A hasComponent B+ designates B as a component of A, that complexes that are instances of A have instances of B as possible components. Note that, the stoichiometry of A is not described, nor is it stated that B is a required component. The use of hasComponent relationships is complementary to the use of functionally composed complexes and is intended to enable the assignment of components to complexes designated by names in external vocabularies. The assignment of components can potentially enable the reconciliation of equivalent complexes at knowledge assembly time.",
               :long => "hasComponent",
              :short => "hasComponent"
    },
    {
        :description => " +A actsIn f(A)+ -  This relationship links an abundance term to the activity term for the same abundance. This relationship is direct because it is a _self_ relationship, the abundance acts in its own activity. For protein abundance p(A) and its molecular activity kin(p(A), +p(A) actsIn kin(p(A))+. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "actsIn",
              :short => "actsIn"
    },
    {
        :description => " +compositeAbundance(A,B) includes A+ -  This relationship links each individual abundance term in a +compositeAbundance(<list>)+ to the compositeAbundance. For example, +compositeAbundance(A, B) includes A+ and +compositeAbundance(A, B) includes B+. This relationship is direct because it is a _self_ relationship. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "includes",
              :short => "includes"
    },
    {
        :description => " +translocation(A, ns1:v1, ns2:v2) translocates A+ -  This relationship links the abundance term in a +translocation()+ to the translocation. This relationship is direct because it is a _self_ relationship. The translocated abundance is directly acted on by the translocation process. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "translocates",
              :short => "translocates"
    },
    {
        :description => " +reaction(reactants(A), products(B)) hasProduct B+ -  This relationship links abundance terms from the +products(<list>)+ in a reaction to the reaction. This is a direct relationship because it is a _self_ relationship. Products are produced directly by a reaction. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "hasProduct",
              :short => "hasProduct"
    },
    {
        :description => " +A reactantIn reaction(reactants(A), products(B))+ -  This relationship links abundance terms from the +reactants(<list>)+ in a reaction to the reaction. This is a direct relationship because it is a _self_ relationship. Reactants are consumed directly by a reaction. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "reactantIn",
              :short => "reactantIn"
    },
    {
        :description => " +p(A) hasModification p(A, pmod(P, S, 473))+ -  This relationship links abundance terms modified by the +pmod()+ function to the unmodified abundance term. This is a direct relationship because it is a _self_ relationship. This relationship is introduced by the BEL Compiler and may not be used by statements in BEL documents.",
               :long => "hasModification",
              :short => "hasModification"
    },
    {
        :description => " +p(A) hasVariant p(A, sub(G, 12, V))+ -  This relationship links abundance terms modified by the +substitution()+, +fusion()+, or +truncation()+ functions to the unmodified abundance term. This relationship is introduced by the BEL Compiler and does not need to be used by statements in BEL documents.",
               :long => "hasVariant",
              :short => "hasVariant"
    }
]
