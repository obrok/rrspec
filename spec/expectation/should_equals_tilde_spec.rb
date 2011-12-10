describe "should =~" do
  it "should succeed" do
    ("123".should =~ /12/).should == 0
  end
end
