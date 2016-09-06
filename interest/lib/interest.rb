class Interest

  def initialize(principal, time)
    @principal = principal
    @time = time
    @rate = 10
  end
  
  def difference
    simple_interest = (@principal * @time * @rate)/100.0
    compound_interest = @principal * ((1 + (@rate/100.0))**@time)
    (compound_interest - simple_interest).round(2)
  end

end

