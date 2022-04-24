require "./lib/pentagonal"

RSpec.describe Pentagonal do
  before(:all) do
    @p = described_class.new
  end

  describe "#nth " do
    it "1st is 1" do
      expect(@p.nth(1)).to eql(1)
    end

    it "2nd is 5" do
      expect(@p.nth(2)).to eql(5)
    end

    it "3rd is 12" do
      expect(@p.nth(3)).to eql(12)
    end

    it "5th is 35" do
      expect(@p.nth(5)).to eql(35)
    end

    it "26th is 1001" do
      expect(@p.nth(26)).to eql(1001)
    end
  end
end
