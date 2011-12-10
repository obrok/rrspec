describe RRSpec::Expectation do
  it "expecting an exception should succeed" do
    (lambda { raise ArgumentError }.should raise_error(ArgumentError)).should == true
  end
end
