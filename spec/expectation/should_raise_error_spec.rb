describe "raise_error" do
  it "should succeed" do
    (lambda { raise ArgumentError }.should raise_error(ArgumentError)).should == true
  end

  it "should fail" do
    result = (lambda { }.should raise_error(ArgumentError)) rescue :raised
    result.should == :raised
  end
end
