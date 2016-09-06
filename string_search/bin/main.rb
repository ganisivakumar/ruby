require_relative "../lib/string"

puts 'Enter the string to be searched'
string = gets.chomp
puts 'Enter the keyword to search'
keyword = gets.chomp

string, occurrence = string.search(keyword)
puts "#{string} | Total occurrences found: #{occurrence}"

