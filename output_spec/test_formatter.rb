class TestFormatter
  attr_accessor :passed, :failed

  def pass
    @passed ||= 0
    @passed += 1
  end

  def fail
    @failed ||= 0
    @failed += 1
  end
end
