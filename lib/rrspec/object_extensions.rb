module RRSpec::ObjectExtensions
  def should(matcher=nil)
    if matcher
      matcher.match(self)
    else
      RRSpec::Expectation.new(self)
    end
  end

  def describe(thing, &block)
    RRSpec.describes << block
  end

  def raise_error(error)
    RRSpec::Matcher::ErrorMatcher.new
  end
end
