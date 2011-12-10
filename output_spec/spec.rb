$LOAD_PATH << "../lib"

require 'rrspec'

module OutputSpec
  autoload :TestFormatter, './test_formatter'

  formatter = RRSpec.formatter = TestFormatter.new

  RRSpec.run

  formatter.calls.should == [
                             :pass,
                             :pass,
                             :pass,
                             :fail,
                             :fail,
                             :error
                            ]
end
