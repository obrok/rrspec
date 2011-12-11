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
                             [:start_context, "Formatter food"],
                             [:start_test, "passes"],
                             [:pass],
                             [:start_test, "passes"],
                             [:pass],
                             [:start_test, "passes"],
                             [:pass],
                             [:start_test, "fails"],
                             [:fail, ExemplaryAssertionError],
                             [:start_test, "fails"],
                             [:fail, ExemplaryAssertionError],
                             [:start_context, "More food"],
                             [:start_test, "crashes"],
                             [:error, ExemplaryOtherError],
                             [:end]
                            ]
end
