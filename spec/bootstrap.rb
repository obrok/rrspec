module Bootstrap
  $stdout.define_singleton_method(:write) do |arg|
    @output = output + arg
    super(arg)
  end

  $stdout.define_singleton_method(:output) do
    @output ||= ""
  end

  def self.verify
    raise "Summary not printed" unless /Finished in [^ ]+ seconds/ =~ $stdout.output
  end
end