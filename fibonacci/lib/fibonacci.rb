class Fibonacci

  def fibonacci_series_upto_given_int(max)
    num1, num2 = 1, 1 
    while num1 <= max
      yield num1
      num1, num2 = num2, num1 + num2
    end 
  end

end

