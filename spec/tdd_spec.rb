require 'tdd'

# describe "#hello_world" do
#   it "returns 'Hello, World!'" do
#     expect(hello_world).to eq("Hello, World!")
#   end
# end

describe Array do
  describe "#my_uniq" do
  let(:array) {Array.new([1, 2, 1, 3, 3])}
  it "correctly returns unique elements" do
    expect(array.my_uniq).to eq([1, 2, 3])
    end
  end

describe "#two_sum"do
    let(:array) {Array.new([-1, 0, 2, -2, 1])}
    it "returns all positions where elements sum to zero" do
      expect(array.two_sum).to eq([[0,4],[2,3]])
    end
  end

describe "#my_transpose" do
  let(:array) {Array.new([
    [0,1,2],
    [3,4,5],
    [6,7,8]
  ])}
  it "it tranposes a matrix " do
    expect(array.my_transpose).to eq([
      [0,3,6],
      [1,4,7],
      [2,5,8]
    ])
  end
end

describe "#stock_picker" do
  let(:array) {Array.new([100, 10, 20, 15, 40, 50, 5, 1000])}
  it "should take in an array of prices as arguments and return an array with index of best buy and sell day" do
    expect(array.stock_picker).to eq([6, 7])
  end
end

end

