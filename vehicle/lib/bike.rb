require_relative 'vehicle'
class Bike < Vehicle
  
  def initialize(vehicle_specs = {})
    super({ name: vehicle_specs[:name], price: vehicle_specs[:price] })
    @dealer = vehicle_specs[:dealer]
  end
  
  def to_s
    super + ',' + "Dealer_name: #{@dealer}"
  end

end

