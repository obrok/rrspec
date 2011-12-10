class RRSpec::Matcher::IncludeMatcher < RRSpec::Matcher::BaseMatcher
  def initialize(thing)
    @thing = thing
  end

  def match(other)
    other.include?(@thing) or raise RRSpec::AssertionError
  end
end
