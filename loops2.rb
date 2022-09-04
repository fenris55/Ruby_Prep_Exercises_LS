=begin

#1
#attempted a few different variants of exercise 1
count = 1

loop do
  puts "#{count} is odd!" if count.odd?
  puts "#{count} is even!" if count.even?
  count += 1
  break if count > 5
end

#cleaner format? like the first better

count = 1

loop do
 if count.odd?
  puts "#{count} is odd!"
 else
  puts "#{count} is even!"
 end
 
 count += 1         # or switch these two and use ==
 break if count > 5   
end

# or using ternary operator

count = 1

loop do 
 puts count.even? ? "#{count} is even!" : "#{count} is odd!"
 break if count == 5
 count += 1
end

#2
loop do 
 number = rand(100)
 puts number
 break if number >= 0 && number <= 10
end

## lesson answer uses.between?(0, 10)
loop do 
 number = rand(100)
 puts number
 break if number.between?(0, 10) #or break if (1..10).include? number
end

process_the_loop = [true, false].sample

#3
if process_the_loop == true
 loop do
  puts "The loop was processed"
  break
 end
else
 puts "The loop wasn't processed!"
end

#4
loop do 
 puts "What does 2 + 2 equal?"
 answer = gets.chomp.to_i
 if answer == 4
  puts "That's correct!"
  break
 else # unneccesary - could end if statement here
   puts "Wrong answer. Try again!"
 end
end

#5
numbers = []

loop do
 puts "Enter any number:"
 input = gets.chomp.to_i
 numbers << input # or numbers.push(input)
 break if numbers[4] #or if numbers.size == 5
end
puts numbers

#6
array = ["Sally", "Joe", "Lisa", "Henry"]

loop do
 puts array.shift
 break if array.size == 0 #could also use array.empty?
end

puts array

#now print the names from last to first

array = ["Sally", "Joe", "Lisa", "Henry"]

loop do
 puts array.pop
 break if array.empty?
end

#7
5.times do |index|
 puts index
 break if index == 2
end

#8
number = 0

until number == 10
 number += 1
 if number % 2 == 0 # or next if number.odd?
  puts number
 end
end

#9
number_a = 0
number_b = 0

loop do 
 number_a += rand(2)
 number_b += rand(2)
 
 next if number_a == 5 || number_b == 5 #this works but example uses 'unless' 
 puts "5 was reached!"  #tried using until but didn't work with if
 break 
end

number_a = 0
number_b = 0

loop do 
 number_a += rand(2)
 number_b += rand(2)
 
 if number_a == 5 || number_b == 5  
  puts "5 was reached!"  
  break 
 end
end

=end
#10  
def greeting
 puts "Hello!"
end

number_of_greetings = 2

while number_of_greetings > 0
 greeting
 number_of_greetings -= 1
end
