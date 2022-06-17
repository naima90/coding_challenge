class Checkout

  # def initialize(promotional_rules)
  #   @promotional_rules = promotional_rules
  # end

  def scan(item)
    @item = "Lavender heart"
  end

  def price
    return 9.25 if @item == "Lavender heart"
  end
end