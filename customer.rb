class Customer

attr_reader :name, :wallet, :drunkenness_level


  def initialize(name, wallet, drunkenness_level)
    @name = name
    @wallet = wallet
    @drunkenness_level = drunkenness_level
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end



end
