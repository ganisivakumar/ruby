class Factorial
  
  def calculate(num)
    factorial = 1
    
    if !num.match(/^\d+$/) 
      raise RuntimeError, "input not a positive integer"
    else 
      digit_range = Range.new(1, num.to_i)
      for element in digit_range do
        factorial *= element
      end
      "Factorial of #{num} is #{factorial}"
    end
  
  end

end

