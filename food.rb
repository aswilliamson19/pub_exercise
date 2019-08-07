class Food

  attr_reader :type, :price, :rejuvenation

  def initialize(type, price, rejuvenation)
    @type = type
    @price = price
    @rejuvenation = rejuvenation
  end

end
