require 'towers_of_hanoi'

describe TowersOfHanoi do

  subject(:towers) {TowersOfHanoi.new}
  describe "#initialize" do
    it "should set @stacks to be a 2d array with all disks in the first array" do
      expect(towers.stacks.length).to eq(3)
      expect(towers.stacks[0].length).to eq(3)
    end
  end

  describe "#move" do
    it "should return false for invalid moves" do
      towers.stacks = [[1], [2], [3]]
      expect(towers.move(2, 0)).to eq(false)
  end
    it "should make a valid move" do
      towers.stacks = [[1], [2], [3]]
      towers.move(1, 2)
      expect(towers.stacks).to eq(  [[1], [], [3, 2]] )
    end

  end

  describe "#won" do
    it "should return true if last stack has all three disks" do
      towers.stacks = [[], [], [3, 2, 1]]
      expect(towers.won?).to eq(true)
    end

    it "should return false if not" do
      towers.stacks = [[2], [], [3, 1]]
      expect(towers.won?).to eq(false)\
    end
  end


end