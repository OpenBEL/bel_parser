ENV["PATH"] = ENV["PATH"].dup.insert(0, './tools/bin:')
puts "============================="
puts "RAGEL Version"
puts
puts `ragel --version`
puts "============================="
puts

# dummy guard to avoid error
guard :process, command: 'date' do; end

def ragel_run(file, *examples)
  watch(%r{^#{file}}) do |rl_files|

    rl_files.each do |f|
      (ragel_out = '') << `ragel -R -T0 -L #{f} 2>&1`
      if $?.exitstatus != 0
        `notify-send -t 2 "Error compiling #{f}"`
        `notify-send -t 2 "#{ragel_out}"`
      else
        examples.each do |ex|
          result = `echo "#{ex}" | ruby #{file.gsub(".rl", ".rb")}`
          `notify-send -t 3 "Example: #{ex}\nOut:\n#{result}"`
        end
      end
    end
  end
end

def ragel6_9_run(file, *examples)
  watch(%r{^#{file}}) do |rl_files|

    rl_files.each do |f|
      (ragel_out = '') << `ragel-6.9 -R -T0 -L #{f} 2>&1`
      if $?.exitstatus != 0
        `notify-send -t 2 "Error compiling #{f}"`
        `notify-send -t 2 "#{ragel_out}"`
      else
        examples.each do |ex|
          result = `echo "#{ex}" | ruby #{file.gsub(".rl", ".rb")}`
          `notify-send -t 3 "Example: #{ex}\nOut:\n#{result}"`
        end
      end
    end
  end
end

ragel6_9_run(
  'lib/bel/parsers/set.rl',
  %Q{SET Species = 9606},
  %Q{Set disease = \\"cat-scratch disease\\"},
  %Q{set PROCESS = \\"Apoptosis\\"},
)


ragel6_9_run(
  'lib/bel/parsers/unset.rl',
  %Q{UNSET Species},
  %Q{Unset disease},
  %Q{unset STATEMENT_GROUP},
)


ragel6_9_run(
  'lib/bel/parsers/define_annotation.rl',
  %Q{DEFINE NAMESPACE HGNC AS URL \\"http://resources/hgnc.belns\\"},
  %Q{Define Annotation Species As Url \\"http://resources/species.belanno\\"},
  %Q{DEFine ANNOtation Status as LiST { \\"Approved\\", \\"Rejected\\"}},
  %Q{define annotation Identifier as pattern \\"[-+]?[0-9]+\\"},
)


ragel6_9_run(
  'lib/bel/parsers/define_namespace.rl',
  %Q{DEFINE NAMESPACE HGNC AS URL \\"http://resources/hgnc.belns\\"},
  %Q{Define Namespace HGNC As Url \\"http://resources/hgnc.belns\\"},
  %Q{define namespace HGNC as url \\"http://resources/hgnc.belns\\"},
)


ragel6_9_run(
  'lib/bel/parsers/bel_parameter.rl',
  %Q{HGNC:AKT1},
  %Q{GOBP:\\"apoptotic process\\"},
  %Q{meshpp: \\"cat-scratch disease\\"},
  %Q{\\"free entity name\\"},
)

ragel6_9_run(
  'lib/bel/parsers/bel_term.rl',
  %Q{p(HGNC:AKT1)},
  %Q{tscript(p(HGNC:AKT1,pmod(P,S,317)))},
  %Q{rxn(reactants(a(SCHEM:\\"Phosphatidylinositol-3,4,5-trisphosphate\\")),products(a(SCHEM:\\"1-Phosphatidyl-D-myo-inositol 4,5-bisphosphate\\")))},
)

ragel6_9_run(
  'lib/bel/parsers/bel_statement.rl',
  %Q{p(HGNC:AKT1) -> bp(MESHPP:Apoptosis)},
)

ragel6_9_run(
  'lib/bel/parsers/identifier.rl',
  %Q{AKT1},
  %Q{AKT1_HUMAN},
  %Q{MAPK1_GAMMA},
)
# vim: ft=ruby
