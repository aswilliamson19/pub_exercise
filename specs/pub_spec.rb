require('Minitest/autorun')
require('Minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new([@drink1, @drink2, @drink3], 'Codeclan Arms', 100)
    @customer1 = Customer.new('Bob', 20, 5)
    @customer2 = Customer.new('Lisa', 10, 3)
    @customer3 = Customer.new('Steve', 5, 8)
    @drink1 = Drink.new('lager', 4)
    @drink2 = Drink.new('rum', 5)
    @drink3 = Drink.new('wine', 3)
  end

  def test_pub_name
    assert_equal('Codeclan Arms', @pub.name)
  end

  def test_drinks
    assert_equal([], @pub.drinks)
  end

  def test_money_in_till
    assert_equal(100, @pub.money_in_till)
  end

  def test_sell_drink_to_customer
    @pub.sell_drink(@drink2)
    assert_equal(105, @pub.money_in_till)
  end



end
