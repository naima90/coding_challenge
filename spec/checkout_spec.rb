require 'checkout'
describe Checkout do
  it "should be able to scan an item" do
    expect(subject.scan("Lavender heart")).to eq("Lavender heart")
  end

  it "should be able to return the price of Lavender heart" do
    subject.scan("Lavender heart")
    expect(subject.price).to eq(9.25)
  end

  it "should be able to return the price of 2 Lavender heart" do
    subject.scan("Lavender heart")
    subject.scan("Lavender heart")
    expect(subject.price).to eq(17.00)
  end
end