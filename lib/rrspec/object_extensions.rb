module RRSpec::ObjectExtensions
  def should(matcher=nil)
    if matcher
      matcher.match(self)
    else
      RRSpec::Expectation.new(self)
    end
  end

  def describe(thing, &block)
    RRSpec.examples << RRSpec::Core::Context.new(thing, block)
  end

  def raise_error
    RRSpec::Matcher::ErrorMatcher.new
  end

  def include(thing)
    RRSpec::Matcher::IncludeMatcher.new(thing)
  end
end
