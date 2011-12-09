module Bootstrap
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

  def self.verify
    verify_summary
    verify_should
  end

  def self.verify_summary
    raise "Summary not printed" unless /Finished in 19.7 seconds/ =~ $stdout.output
  end

  def self.verify_should
    raise "Should doesn't succeed" unless 2.should == 2
  end
end
