require './lib/food_truck'
require './lib/item'
require './lib/event'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EventTest < Minitest::Test

  def test_it_has_attributes
    event = Event.new("South Pearl Street Farmers Market")

    assert_instance_of Event, event
    assert_equal "South Pearl Street Farmers Market", event.name
    assert_equal [], event.food_trucks
  end


end