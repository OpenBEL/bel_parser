ROOT_DIR       = File.join(File.expand_path(File.dirname(__FILE__)), '..')
RAGEL_INCLUDES = [
  "#{ROOT_DIR}/lib/bel/parsers/common",
  "#{ROOT_DIR}/lib/bel/parsers/expression",
  "#{ROOT_DIR}/lib/bel/parsers/bel_script",
]

task(:ragel) {
  require 'find'
  
  def which(command)
    path = `which #{command}`
    if $?.exitstatus.zero?
      path
    else
      nil
    end
  end

  fail "Ragel not found." unless which('ragel')

  ragel_includes = RAGEL_INCLUDES.map { |d| "-I #{d}" }.join(' ')

  Find.find('.').grep(/.*?rl$/).each do |ragel_file|
    `ragel #{ragel_includes} -R -T0 -L #{ragel_file}`
    fail if !$?.exitstatus.zero?
  end
}
