class Integer

  def generate_primenumbers
    prime_numbers = []
    2.step(self) do |num|
      if check_prime(num)
        prime_numbers << num   
      end     
    end
    prime_numbers
  end

  def check_prime(num)
    2.step(Math.sqrt(num)) do |factor|
      if num % factor == 0
        return false
      end
    end
    return true
  end

end

