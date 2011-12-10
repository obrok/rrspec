class RRSpec::Expectation
  def initialize(subject)
    @subject = subject
  end

  [:==, :=~].each do |method|
    define_method(method) do |other|
      @subject.send(method, other) or raise RRSpec::AssertionError
    end
  end
end
