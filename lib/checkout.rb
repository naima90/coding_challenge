class Checkout

  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
    @basket.join(" ") 
  end

  def price
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