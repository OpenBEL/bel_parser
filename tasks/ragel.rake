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

  Find.find('.').grep(/.*?rl$/).each do |ragel_file|
    `ragel -R -T0 -L #{ragel_file}`
    fail if !$?.exitstatus.zero?
  end
}
