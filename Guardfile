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
  'lib/bel/parsers/bel_statement.rl',
  %Q{p(HGNC:AKT1) -> bp(MESHPP:Apoptosis)},
)
# vim: ft=ruby
