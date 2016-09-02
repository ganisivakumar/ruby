class Customer
  attr_accessor :name, :account_no, :balance
  @@account_no = 0
  
  def initialize(name)
    @name = name
    @@account_no += 1
    @account_no = @@account_no
    @balance = 1000
  end
  
  def to_s
    "Name: #{@name} Account_No: #{@account_no} Balance: #{@balance}"
  end

  def deposit(amount)
    if amount >= 0
      puts "Depositing Rs.#{amount}"
      @balance += amount
    else
      puts 'Amount must be greater than 0.'
    end
  end
  
  def withdraw(amount)
    if amount <= 0
      puts 'Amount must be greater than 0.'
    elsif amount > @balance
      puts 'You do not have sufficient funds.'
    else
      puts "Withdrawing Rs.#{amount}"
      @balance -= amount
    end
  end

end

