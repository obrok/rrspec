describe "should include" do
  it "should succeed" do
    ("1234".should include "23").should == true
  end

  it "should fail" do
    lambda { "1234".should include "24" }.should raise_error
  end
end
