module RRSpec::ObjectExtensions
  def should
    RRSpec::Matcher.new(self)
  end
end
