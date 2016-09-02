require_relative "../lib/customer"
loop do
  puts 'Please enter customer name or q/Q to quit:'
  input = gets.chomp
    if input == 'q' or input == 'Q'
      break
    end
  customer1 = Customer.new(input)
  puts customer1
  puts 'enter 1 to deposit or 2 to withdraw or 0 to quit'
  option = gets.chomp.to_i
  if option == 0
    break
  elsif option == 1
    puts 'Enter an amount to deposit'
    deposit = gets.chomp.to_i
    customer1.deposit(deposit)
    puts "Balance : #{ customer1.balance }"
  elsif option == 2
    puts 'Enter an amount to withdraw'
    deposit = gets.chomp.to_i
    customer1.withdraw(deposit)
    puts "Balance : #{ customer1.balance }"
  end
end

