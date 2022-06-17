require 'checkout'
describe Checkout do
  it "should be able to scan an item" do
    expect(subject.scan("Lavender heart")).to eq("Lavender heart")
  end

  it "should be able to return the price of Lavender heart" do
    subject.scan("Lavender heart")
    expect(subject.total_price).to eq(9.25)
  end

  it "should be able to return the price of 2 Lavender heart" do
    subject.scan("Lavender heart")
    subject.scan("Lavender heart")
    expect(subject.total_price).to eq(17.00)
  end

  it "shouldn't be able to scan products that aren't available" do
    expect(subject.scan("Apple")).to eq("Product's not available")
  end
end