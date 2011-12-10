formatter = RRSpec::Formatter::SimpleFormatter.new(Bootstrap::TestIO)

describe RRSpec::Formatter::SimpleFormatter do
  it "prints Es on error" do
    formatter.error
  end

  it "prints Fs on fails" do
    formatter.fail
  end
end
