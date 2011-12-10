require 'stringio'
formatter = RRSpec::Formatter::SimpleFormatter.new(Bootstrap::TestIO)

describe RRSpec::Formatter::SimpleFormatter do
  it "prints Es on error" do
    formatter.error
  end

  it "prints Fs on fail" do
    formatter.fail
  end

  it "prints . on pass" do
    formatter.pass
    Bootstrap::TestIO.string[2].should == "."
  end

  it "prints a summary at the end" do
    time = Time.now
    io = StringIO.new
    formatter = RRSpec::Formatter::SimpleFormatter.new(io)

    Time.fix_time(time)
    formatter.start
    Time.fix_time(time + 19.678)
    formatter.end
    Time.release_time

    io.string.should == "\n\nFinished in 19.7 seconds\n"
  end
end
