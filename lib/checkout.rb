# frozen_string_literal: true

# this is checkout class
class Checkout
  def initialize
    @products = [
      { code: 0o01, name: 'Lavender heart', price: 9.25 },
      { code: 0o02, name: 'Personalised cufflinks', price: 45.00 },
      { code: 0o03, name: 'Kids T-shirt', price: 19.95 }
    ]
    @basket = []
  end

  def scan(item)
    product_name = []
    @products.map do |product|
      product_name << product[:name].downcase
    end
    if product_name.include?(item.downcase)
      @basket << item
      item
    else
      "Product's not available"
    end
  end

  def total_price
    price = 0
    lavender = []
    @basket.map do |item|
      lavender << item if item == 'Lavender heart'
      @products.map do |product|
        price += product[:price] if product[:name].include?(item)
      end
    end
    price -= (lavender.length * 0.75) if lavender.length >= 2
    price > 60.00 ? price -= (price * 10 / 100) : price
  end
end
