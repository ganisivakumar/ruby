require_relative "../lib/vehicle"
require_relative "../lib/bike"

bike = Bike.new({price: '500', name: 'Pulsar', dealer: 'Bajaj'})
puts bike
bike.price = 700
puts bike

