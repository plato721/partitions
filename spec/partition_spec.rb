require "./lib/partition"

RSpec.describe Partition do
  before(:all) do
    @p = described_class.new
  end

  context "Euler Pentagonal" do
    it "1st is 1" do
      expect(@p.euler_pentagonal(1)).to eql(1)
    end

    it "2nd is 2" do
      expect(@p.euler_pentagonal(2)).to eql(2)
    end

    it "3rd is 5" do
      expect(@p.euler_pentagonal(3)).to eql(5)
    end

    it "5th is 12" do
      expect(@p.euler_pentagonal(5)).to eql(12)
    end

    it "10th is 40" do
      expect(@p.euler_pentagonal(10)).to eql(40)
    end
  end

  context "Partition Finding" do
    it "finds the first 10" do
      result = [*0..9].map { |i| @p.partitions(i) }
      expect(result).to eql([1, 1, 2, 3, 5, 7, 11, 15, 22, 30])
    end
  end
end
