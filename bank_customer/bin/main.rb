require_relative "../lib/customer"
loop do
  puts 'Please enter customer name or q/Q to quit:'
  customer_name = gets.chomp
  if customer_name == 'q' or customer_name == 'Q'
    break
  end
  customer = Customer.new(customer_name)
  puts customer
  puts 'enter 1 to deposit or 2 to withdraw or 0 to quit'
  option = gets.chomp.to_i
  if option == 0
    break
  elsif option == 1
    puts 'Enter an amount to deposit'
    deposit = gets.chomp.to_i
    customer.deposit(deposit)
    puts "Balance : #{ customer.balance }"
  elsif option == 2
    puts 'Enter an amount to withdraw'
    withdraw = gets.chomp.to_i
    customer.withdraw(withdraw)
    puts "Balance : #{ customer.balance }"
  end
end

