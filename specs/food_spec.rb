require('minitest/autorun')
require('minitest/rg')
require_relative('../food')
require_relative('../pub')
require_relative('../drink')

class TestFood < MiniTest::Test

  def setup
    @food = Food.new('chips and cheese', 4, 2)
  end

  def test_food_type
    assert_equal('chips and cheese', @food.type)
  end

  def test_price
    assert_equal(4, @food.price)
  end

  def test_rejuvenation
    assert_equal(2, @food.rejuvenation)
  end

end
