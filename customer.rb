class Customer

attr_reader :name, :wallet, :drunkenness_level, :age


  def initialize(name, wallet, drunkenness_level, age)
    @name = name
    @wallet = wallet
    @drunkenness_level = drunkenness_level
    @age = age
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end

  def gets_drunk(drink)
    @drunkenness_level += drink.alcohol_level
  end

  def buy_food(customer, food)
    @drunkenness_level -= food.rejuvenation
  end

end
