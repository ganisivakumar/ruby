class Integer
  
  def generate_primenumbers
    prime_numbers = []
    2.step(self) do |num|
      is_prime = true
      2.step(Math.sqrt(num)) do |factor|
        if num % factor == 0
          is_prime = false
          break
        end
      end
      if is_prime
        prime_numbers << num   
      end     
    end
    prime_numbers
  end
 
end

