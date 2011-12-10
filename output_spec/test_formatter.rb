class TestFormatter
  attr_accessor :passed, :failed, :errors

  def pass
    @passed ||= 0
    @passed += 1
  end

  def fail
    @failed ||= 0
    @failed += 1
  end

  def error
    @errors ||= 0
    @errors += 1
  end
end
