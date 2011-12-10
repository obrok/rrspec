$LOAD_PATH << "../lib"

require 'rrspec'

module OutputSpec
  autoload :TestFormatter, './test_formatter'

  formatter = RRSpec.formatter = TestFormatter.new

  RRSpec.run

  formatter.passed.should == 3
  formatter.failed.should == 2
end
