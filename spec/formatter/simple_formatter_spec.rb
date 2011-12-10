formatter = RRSpec::Formatter::SimpleFormatter.new(Bootstrap::TestIO)

describe RRSpec::Formatter::SimpleFormatter do
  it "prints Es on error" do
    formatter.error
  end
end
