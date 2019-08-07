require('Minitest/autorun')
require('Minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new('Codeclan Arms', {@drink1, @drink2, @drink3}, 100)
    @customer1 = Customer.new('Bob', 20, 5, 17)
    @customer2 = Customer.new('Lisa', 10, 3, 21)
    @customer3 = Customer.new('Steve', 5, 15, 55)
    @drink1 = Drink.new('lager', 4, 2)
    @drink2 = Drink.new('rum', 5, 3)
    @drink3 = Drink.new('wine', 3, 2)
  end

  def test_pub_name
    assert_equal('Codeclan Arms', @pub.name)
  end

  def test_drinks
    assert_equal({}, @pub.stock)
  end

  def test_money_in_till
    assert_equal(100, @pub.money_in_till)
  end

  def test_sell_drink_to_customer
    @pub.sell_drink(@customer1, @drink2)
    assert_equal(105, @pub.money_in_till)
    assert_equal(15, @customer1.wallet)
  end

  def test_check_customer_age__served
    assert_equal(true, @pub.check_customer_age(@customer2))
  end

  def test_check_customer_age__not_served
    assert_equal(false, @pub.check_customer_age(@customer1))
  end

  def test_check_customer_drunkenness__served
    assert_equal(true, @pub.customer_drunkenness(@customer2))
  end

  def test_check_customer_drunkenness__not_served
    assert_equal(false, @pub.customer_drunkenness(@customer3))

  end

end
