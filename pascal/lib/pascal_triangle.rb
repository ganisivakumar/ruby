#Print Pascal's triangle using 'yield'.
class PascalTriangle

  def draw(n)
    if !n.match(/^\d+$/)
      raise RuntimeError, "input is not a positive integer"
    else
      limit = n.to_i
      0.upto(limit) do |row|
        0.upto(row) do |column|
          yield row, column
        end
      printf("\n")
      end
    end
  end

  def factorial(n)
    (1..n).inject(1) { |product, i| product * i }
  end

end

