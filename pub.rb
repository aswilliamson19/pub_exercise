class Pub

  attr_reader :name, :drinks, :money_in_till

  def initialize(drinks, name, money_in_till)
    @drinks = []
    @name = name
    @money_in_till = money_in_till
end

  def sell_drink(drink)
    @money_in_till += drink.price
  end

end
