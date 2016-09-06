require_relative "../lib/pascal_triangle"

puts 'enter number of lines to print in pascal: '
no_of_lines = gets.chomp
pascal_triangle = PascalTriangle.new
pascal_triangle.draw_pascal(no_of_lines){ |row, column| pascal_triangle.binomial(row, column) }

