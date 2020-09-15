class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new
  end

  def stock(item, amount)
    start = 0
    @inventory[item] = (start += amount)
  end

  def check_stock(item)
    if @inventory.key?(item)
      the_item = @inventory.find do |name, price|
        name == item
      end[1]
    else
      0
    end
  end

end
