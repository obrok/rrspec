module RRSpec::ObjectExtensions
  def should(matcher=nil)
    if matcher
      true
    else
      RRSpec::Expectation.new(self)
    end
  end

  def describe(thing, &block)
    RRSpec.describes << block
  end
end
