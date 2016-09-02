class Vehicle
  attr_reader :name
  attr_accessor :price
  
  def initialize(parameters = {})
    @name = parameters[:name]
    @price = parameters[:price]
  end
  
  def to_s
    "Vehicle_name: #{@name}, Price: #{@price}"
  end

end

