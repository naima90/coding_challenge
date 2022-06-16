require 'checkout'
describe Checkout do
  it "should be able to scan an item" do
    expect(subject.scan("Lavender heart")).to eq("Lavender heart")
  end
end