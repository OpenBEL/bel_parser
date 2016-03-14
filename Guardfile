# dummy guard to avoid error
guard :process, command: 'date' do; end

guard 'rake', :task => 'test' do
  watch(%r{^my_file.rb})
end

def ragel(file, *examples)
  watch(%r{^#{file}}) do |rl_files|

    rl_files.each do |f|
      (ragel_out = '') << `ragel -R -T0 -L #{f} 2>&1`
      if $?.exitstatus != 0
        `notify-send -t 2 "Error compiling #{f}"`
        `notify-send -t 2 "#{ragel_out}"`
      else
        examples.each do |ex|
          rbfile = file.gsub('.rl', '.rb').shellescape
          result = `echo '#{ex}' | ruby #{rbfile}`

          msg = %Q{Example: #{ex}, Out: #{result}}
          `notify-send -t 3 "#{msg.shellescape}"`
        end
      end
    end
  end
end

ragel(
  'lib/bel/parsers/set.rl',
  %Q{SET Species = 9606},
  %Q{Set disease = "cat-scratch disease"},
  %Q{set PROCESS = "Apoptosis"},
)


ragel(
  'lib/bel/parsers/unset.rl',
  %Q{UNSET Species},
  %Q{Unset disease},
  %Q{unset STATEMENT_GROUP},
)


ragel(
  'lib/bel/parsers/define_annotation.rl',
  %Q{Define Annotation Species As Url "http://resources/species.belanno"},
  %Q{DEFine ANNOtation Status as LiST { "Approved", "Rejected"}},
  %Q{define annotation Identifier as pattern "[-+]?[0-9]+"},
)


ragel(
  'lib/bel/parsers/define_namespace.rl',
  %Q{DEFINE NAMESPACE HGNC AS URL "http://resources/hgnc.belns"},
  %Q{Define Namespace HGNC As Url "http://resources/hgnc.belns"},
  %Q{define namespace HGNC as url "http://resources/hgnc.belns"},
)

ragel(
  'lib/bel/parsers/bel_statement.rl',
  %Q{p(HGNC:AKT1) -> bp(MESHPP:Apoptosis)},
)
# vim: ft=ruby
