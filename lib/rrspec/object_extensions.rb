module RRSpec::ObjectExtensions
  def should
    RRSpec::Matcher.new(self)
  end

  def describe(thing, &block)
    RRSpec.describes << block
  end
end
