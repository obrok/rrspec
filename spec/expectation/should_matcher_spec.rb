describe RRSpec::Expectation do
  class TestMatcher < RRSpec::Matcher::BaseMatcher
    def match(thing)
      thing or raise RRSpec::AssertionError
    end
  end

  it "should succeed in matching against a matcher" do
    true.should TestMatcher.new
  end
end
