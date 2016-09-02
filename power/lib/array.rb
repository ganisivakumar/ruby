class Array
  def power(x)
    output_array = []
    self.each{ |i| output_array << i**x }
    output_array
  end
end

