require('Minitest/autorun')
require('Minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')
require_relative('../food')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new('Andy', 50, 0, 35)
    @customer2 = Customer.new('Bob', 30, 8, 32 )
    @drink1 = Drink.new('lager', 4, 2)
    @drink2 = Drink.new('rum', 5, 3)
    @drink3 = Drink.new('wine', 3, 2)
    @food1 = Food.new('steak pie', 6, 4)
    # @pub = Pub.new([@drink1, @drink2, @drink3], 'Codeclan Arms', 100)
  end

  def test_name
    assert_equal('Andy', @customer.name)
  end

  def test_wallet
    assert_equal(50, @customer.wallet)
  end

  def test_how_drunk_is_the_customer
    assert_equal(0, @customer.drunkenness_level)
  end

  def test_buy_drink
    @customer.buy_drink(@drink2)
    assert_equal(45, @customer.wallet())
  end

  def test_age
    assert_equal(35, @customer.age())
  end

  def test_if_customer_gets_drunk
    assert_equal(2, @customer.gets_drunk(@drink1))
  end

  def test_buy_food
    @customer2.buy_food(@customer2, @food1)
    assert_equal(4, @customer2.drunkenness_level)
  end


end
