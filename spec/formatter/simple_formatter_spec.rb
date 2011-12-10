require 'stringio'
formatter = RRSpec::Formatter::SimpleFormatter.new(Bootstrap::TestIO)

begin; raise ArgumentError; rescue Exception => error; end
begin; raise RRSpec::AssertionError; rescue Exception => failure; end

describe RRSpec::Formatter::SimpleFormatter do
  it "prints Es on error" do
    formatter.error(error)
  end

  it "prints Fs on fail" do
    formatter.fail(failure)
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
    formatter.pass
    formatter.error(error)
    formatter.fail(failure)
    formatter.end
    Time.release_time

    io.string.should include "\n\nFinished in 19.7 seconds\n3 examples, 2 failures\n"
  end

  it "prints errors" do
    io = StringIO.new
    formatter = RRSpec::Formatter::SimpleFormatter.new(io)

    formatter.start
    formatter.error(error)
    formatter.fail(failure)
    formatter.end

    io.string.should =~ /#{error}.*#{failure}/m
    io.string.should include error.backtrace.first
    io.string.should include failure.backtrace.first
  end
end
