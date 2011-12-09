module RRSpec::ObjectExtensions
  def should
    RRSpec::Matcher.new(self)
  end

  def describe(thing)    
  end
end
