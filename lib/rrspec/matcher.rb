class RRSpec::Matcher
  def initialize(subject)
    @subject = subject
  end

  def ==(other)
    @subject == other or raise RRSpec::AssertionError
  end
end
