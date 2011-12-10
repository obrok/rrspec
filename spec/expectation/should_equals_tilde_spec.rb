describe "should =~" do
  it "should succeed" do
    ("123".should =~ /12/).should == 0
  end

  it "should fail" do
    lambda { "123".should =~ /a/ }.should raise_error
  end
end
