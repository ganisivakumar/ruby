require_relative "../lib/interest"
puts 'Enter principal amount:'
principal = gets.to_f
puts 'Enter number of years to calculate interest:'
time = gets.to_f

interest = Interest.new(principal,time)
puts "Difference in interest is : #{interest.difference} "

