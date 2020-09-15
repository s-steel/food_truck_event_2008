class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new
  end

  def stock(item, amount)
    @inventory[item] = amount
  end

  def check_stock(item)

  end

end
