class Pub

  attr_reader :name, :stock, :money_in_till

  def initialize(name, stock, money_in_till)
    @stock = Hash.new(0)
    @name = name
    @money_in_till = money_in_till
end

  def sell_drink(customer, drink)
    @money_in_till += drink.price
    customer.buy_drink(drink)
  end

  def check_customer_age(customer)
    if customer.age > 18
      return true
    else
      return false
    end
  end

  def customer_drunkenness(customer)
    if customer.drunkenness_level < 10
      return true
    else
      return false
    end
  end

  def stock_count(drink)
    return @stock[drink]
  end

end
