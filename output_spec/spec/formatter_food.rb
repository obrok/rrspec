describe "Formatter food" do
  3.times do
    it "passes" do
    end
  end

  2.times do
    it "fails" do
      raise ExemplaryAssertionError
    end
  end

  it "crashes" do
    raise ExemplaryOtherError
  end
end
