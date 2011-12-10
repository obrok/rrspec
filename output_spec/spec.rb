$LOAD_PATH << "../lib"

require 'rrspec'

module OutputSpec
  autoload :TestFormatter, './test_formatter'

  RRSpec.formatter = TestFormatter.new
end
