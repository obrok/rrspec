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
end

describe "More food" do
  it "crashes" do
    raise ExemplaryOtherError
  end
end
