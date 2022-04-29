require "./lib/pentagonal"

RSpec.describe Pentagonal do
  before(:all) do
    @p = described_class.new
  end

  describe "#nth " do
    it "1st is 1" do
      expect(@p.nth(1)).to eql(1)
    end

    it "2nd is 2" do
      expect(@p.nth(2)).to eql(2)
    end

    it "3rd is 5" do
      expect(@p.nth(3)).to eql(5)
    end

    it "5th is 12" do
      expect(@p.nth(5)).to eql(12)
    end

    it "10th is 40" do
      expect(@p.nth(10)).to eql(40)
    end
  end
end
