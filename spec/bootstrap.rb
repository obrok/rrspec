require 'stringio'

module Bootstrap
  TestIO = StringIO.new

  $stdout.define_singleton_method(:write) do |arg|
    @output = output + arg
    super(arg)
  end

  $stdout.define_singleton_method(:output) do
    @output ||= ""
  end

  def self.it_ran
    @it_ran = true
  end

  def self.verify
    verify_should_succeeds
    verify_should_fails
    verify_it_ran
    verify_formatter_prints_errors
    verify_formatter_prints_fails
  end

  def self.verify_should_succeeds
    raise "Should doesn't succeed" unless 2.should == 2
  end

  def self.verify_should_fails
    2.should == 3
    raise "Should doesn't fail"
  rescue RRSpec::AssertionError
  end

  def self.verify_it_ran
    @it_ran.should == true
  end

  def self.verify_formatter_prints_errors
    TestIO.string[0].should == "E"
  end

  def self.verify_formatter_prints_fails
    TestIO.string[1].should == "F"
  end
end
