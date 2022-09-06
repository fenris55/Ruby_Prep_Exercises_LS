=begin
#1
car = { 
  type: "sedan",
  color: "blue",
  mileage: 80_000
}

#2
car = { 
  type: "sedan",
  color: "blue",
  mileage: 80_000
}

car[:year] = 2003

#3
car = { 
  type: "sedan",
  color: "blue",
  mileage: 80_000,
  year: 2003
}

car.delete(:mileage)

#4
car = { 
  type: "sedan",
  color: "blue",
  year: 2003
}

puts car[:color]

#HASH NOTE
#use sqaure bracets [] to add to hash or reference key
#use parentheses with method (like .delete(hashkey))

#5
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |name, number|
  puts "A #{name} number is #{number}."
end

#6
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |name, number|
  number / 2
end

p half_numbers

#7
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |key, value|
  value < 25
end
p low_numbers

#8
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
  value < 25
end
p low_numbers #this and new variable low_numbers aren't needed - hash is mutated
p numbers

#9
{
  car: { type: "sedan", color: "blue", year: 2003}
  truck: { type: "pickup", color: "red", year: 1998}
}

=end
#10
#rewrite hash as nested array
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[type: 'sedan'], [color: 'blue'], [year: 2003]]