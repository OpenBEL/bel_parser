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

ragel_run(
  'lib/bel/parsers/set.rl',
  %Q{SET Species = 9606},
  %Q{Set disease = \\"cat-scratch disease\\"},
  %Q{set PROCESS = \\"Apoptosis\\"},
)

ragel_run(
  'lib/bel/parsers/unset.rl',
  %Q{UNSET Species},
  %Q{Unset disease},
  %Q{unset STATEMENT_GROUP},
)

# vim: ft=ruby
