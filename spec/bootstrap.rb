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
    raise "Summary not printed" unless /Finished in 19.7 seconds/ =~ $stdout.output
  end
end
