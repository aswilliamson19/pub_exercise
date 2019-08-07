require('Minitest/autorun')
require('Minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new('Andy', 50, 0)
    @drink1 = Drink.new('lager', 4)
    @drink2 = Drink.new('rum', 5)
    @drink3 = Drink.new('wine', 3)
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





end
