require 'pry'

class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_trucks_with_item(food_truck, item)
    end
  end

  def food_trucks_with_item(food_truck, item)
    food_truck.inventory.find_all do |_item|
      _item == item
    end
  end
end
