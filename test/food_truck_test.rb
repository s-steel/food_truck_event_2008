require './lib/food_truck'
require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class FoodTruckTest < Minitest::Test

  def test_it_has_attributes
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    assert_equal 2.50, item2.price
    assert_equal "Apple Pie (Slice)", item2.name

    assert_instance_of FoodTruck, food_truck
    assert_equal "Rocky Mountain Pies", food_truck.name

    expected = {}
    assert_equal expected, food_truck.inventory
  end

  def test_check_stock
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    assert_equal 0, food_truck.check_stock(item1)

    food_truck.stock(item1, 30)

    expected = {item1 => 30}
    assert_equal expected, food_truck.inventory

    assert_equal 30, food_truck.check_stock(item1)

    food_truck.stock(item1, 25)

    assert_equal 55, food_truck.check_stock(item1)

    food_truck.stock(item2, 12)

    expected2 = {item1 => 55, item2 => 12}
    assert_equal expected2, food_truck.inventory
  end

end
