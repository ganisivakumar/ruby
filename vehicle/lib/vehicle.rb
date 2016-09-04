class Vehicle
  attr_accessor :price
  
  def initialize(vehicle_specs = {})
    @name = vehicle_specs[:name]
    @price = vehicle_specs[:price]
  end
  
  def to_s
    "Vehicle_name: #{@name}, Price: #{@price}"
  end

end

