$LOAD_PATH << "../lib"

require 'rrspec'

ExemplaryAssertionError = RRSpec::AssertionError.new
ExemplaryOtherError = ArgumentError.new

module OutputSpec
  autoload :TestFormatter, './test_formatter'

  formatter = RRSpec.formatter = TestFormatter.new

  RRSpec.run

  formatter.calls.should == [
                             [:start],
                             [:pass],
                             [:pass],
                             [:pass],
                             [:fail, ExemplaryAssertionError],
                             [:fail, ExemplaryAssertionError],
                             [:error, ExemplaryOtherError],
                             [:end]
                            ]
end
