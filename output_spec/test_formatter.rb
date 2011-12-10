class TestFormatter
  attr_accessor :calls

  def method_missing(method, *args, &block)
    @calls ||= []
    @calls << method
  end
end
