require_relative "../lib/name"

print 'enter first name: '
firstname = gets.chomp
print 'enter last name: '
lastname = gets.chomp
person = Name.new(firstname, lastname)
p person.to_s

