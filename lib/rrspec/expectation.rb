class RRSpec::Expectation
  def initialize(subject)
    @subject = subject
  end

  def ==(other)
    @subject == other or raise RRSpec::AssertionError
  end
end
