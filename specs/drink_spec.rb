require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')
require_relative('../pub')
require_relative('../customer')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new('lager', 4)
    @drink2 = Drink.new('rum', 5)
    @drink3 = Drink.new('wine', 3)
  end

  def test_drink_name
    assert_equal('lager', @drink1.name)
  end

  def test_drink_price
    assert_equal(4, @drink1.price)
  end

end
