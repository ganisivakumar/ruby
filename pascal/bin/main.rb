require_relative "../lib/pascal_triangle"

puts 'enter n: '
n = gets.chomp
pascal_triangle = PascalTriangle.new
pascal_triangle.draw(n) do |row, column|
  printf("%d ", pascal_triangle.factorial(row) / (pascal_triangle.factorial(column) * pascal_triangle.factorial(row-column)))
end
