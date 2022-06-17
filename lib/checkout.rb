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
    price = 0
    lavender, cufflinks, tshirt = [], [], []
    @basket.map do |item| 
      if item == "Lavender heart"
        lavender << item
      elsif item == "Personalised cufflinks"
        cufflinks << item
      elsif item == "Kids T-shirt"
        tshirt << item
      end
    end
    if lavender.length >= 2
      price += (lavender.length * 8.50)
    else
      price += 9.25
    end
    if cufflinks
      price += (cufflinks.length * 45.00)
    end
    if tshirt
      price += (tshirt.length * 19.95)
    end
    price
  end

end