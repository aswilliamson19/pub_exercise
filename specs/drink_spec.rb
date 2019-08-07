require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')
require_relative('../pub')
require_relative('../customer')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new('lager', 4, 2)
    @drink2 = Drink.new('rum', 5, 3)
    @drink3 = Drink.new('wine', 3, 2)
  end

  def test_drink_name
    assert_equal('lager', @drink1.name)
  end

  def test_drink_price
    assert_equal(4, @drink1.price)
  end

  def test_alcohol_level_of_drink
    assert_equal(2, @drink1.alcohol_level)
  end
end
