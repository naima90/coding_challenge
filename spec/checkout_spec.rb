require 'checkout'
describe Checkout do
  it "should be able to scan an item" do
    expect(subject.scan("Lavender heart")).to eq("Lavender heart")
  end

  it "should be able to return the price of scanned item" do
    subject.scan("Lavender heart")
    expect(subject.price).to eq(9.25)
  end
end