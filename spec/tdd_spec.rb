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
end