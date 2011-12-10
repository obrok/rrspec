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
end
