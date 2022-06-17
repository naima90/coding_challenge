class Checkout

  def initialize
    @products = [ {code: 001, name: "Lavender heart", price: 9.25}, {code: 002, name: "Personalised cufflinks", price: 45.00}, {code: 003, name: "Kids T-shirt", price: 19.95} ]
    @basket = []
  end

  def scan(item)
    product_name = []
    @products.map do |product|
      product_name << product[:name].downcase
    end
    if product_name.include?(item.downcase)
      @basket << item
      return item
    else 
      "Product's not available"
    end
  end

  def total_price
    lavender = []
    @basket.map do |item| 
      if item == "Lavender heart"
        lavender << item
      end
    end
    if lavender.length == 1
      9.25
    else  
      lavender.length * 8.50
    end
  end

end