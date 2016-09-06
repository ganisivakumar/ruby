class Factorial

  def calculate(num)
    factorial = 1
    if num.match(/^\d+$/)
      digit_range = (1..(num.to_i))
      for element in digit_range do
        factorial *= element
      end
      "#{num}! = #{factorial}"
    else 
      'Invalid input'
    end
  end

end

