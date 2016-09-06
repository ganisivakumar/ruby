#Print Pascal's triangle using 'yield'.
class PascalTriangle

  def draw_pascal(no_of_lines)
    if !no_of_lines.match(/^\d+$/)
      raise RuntimeError, "input is not a positive integer"
    else
      limit = no_of_lines.to_i
      0.upto(limit) do |row|
        0.upto(row) do |column|
          yield row, column
        end
      printf("\n")
      end
    end
  end
  
  def factorial(num)
    if num < 0
      return "Please enter a positive number"
    elsif num == 0
      return 1
    else
      num * factorial(num - 1)
    end
  end

  def binomial(row, column)
    printf("%d ", factorial(row) / (factorial(column) * factorial(row - column)))
  end

end

