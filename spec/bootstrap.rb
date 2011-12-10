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

  def self.fix_now(time)
    Time.define_singleton_method(:now) do
      if @was_here
        time + 19.668
      else
        @was_here = true
        time
      end
    end
  end

  def self.start
    fix_now Time.now
  end

  def self.it_ran
    @it_ran = true
  end

  def self.verify
    verify_summary
    verify_should_succeeds
    verify_should_fails
    verify_it_ran
    verify_formatter_prints_errors
  end

  def self.verify_summary
    raise "Summary not printed" unless /Finished in 19.7 seconds/ =~ $stdout.output
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
end
