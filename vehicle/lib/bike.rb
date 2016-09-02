require_relative 'vehicle'
class Bike < Vehicle
  attr_reader :dealer
  
  def initialize(parameters = {})
    super({name: parameters[:name], price: parameters[:price]})
    @dealer = parameters[:dealer]
  end
  
  def to_s
    super + ',' + " Dealer_name: #{@dealer}"
  end

end

