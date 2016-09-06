require_relative "../lib/string"

puts 'enter the string: '
string = gets.chomp
count_array = string.character_count
puts "Number of lowercase characters = #{count_array[0]}"
puts "Number of uppercase characters = #{count_array[1]}"
puts "Number of digits = #{count_array[2]}"
puts "Number of special characters = #{count_array[3]}" 

