describe "raise_error" do
  it "should succeed" do
    (lambda { raise ArgumentError }.should raise_error).should == true
  end

  it "should fail" do
    result = (lambda { }.should raise_error) rescue :raised
    result.should == :raised
  end
end
