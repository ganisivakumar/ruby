require_relative "../lib/factorial"
puts 'Enter number to calculate factorial:'
number = gets.chomp
factorial = Factorial.new
p factorial.calculate(number)
