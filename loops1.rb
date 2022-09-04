=begin

#2
message1 = "This is the outer loop"
message2 = "This is the inner loop"

loop do
  puts message1 
   if message1 == 1
    next
   end
   loop do
     puts message2
     if message2 == 1
       break
     end
   end
end

loop do
 puts "This is the outer loop."

 loop do 
  puts "This is the inner loop."
  break
 end
 
 break
end

puts "This is outside all loops."

#3
iterations = 1

loop do 
 puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

#4
loop do
 puts "Should I stop looping?"
 answer = gets.chomp.downcase
 break if answer == "yes"
 puts "Wrong answer. Please answer 'yes.'"
end

#5
# this option works but feel like shouldn't use a bock to solve this? makes false irrelevant
#also can obviously puts 5 hellos but that seems silly
#ahhh add a variable to increment - below

say_hello = true

while say_hello
 5.times { puts "Hello!"}
  say_hello = false
end

say_hello = true
count = 0 # added thisss

while say_hello
 puts "Hello!"
 count += 1 #and used it to increment
 say_hello = false if count == 5
end

#ok, the beloW produces the same result but didn't know how to use the empty array given
#apparantly with .size - typing solution below

#6
#numbers = []
five = true
n = 0

while five
 puts rand(1..99)
 n += 1
 five = false if n == 5
end

numbers = []

while numbers.size < 5
 numbers << rand(100)
end

puts numbers

#option 1 - reverse and move count
count = 0

#7
until count == 10
 count += 1
  puts count
end

#option 2 - leave count and change numebrs/comparators

count = 1

until count > 10
 puts count
 count += 1
end

#8
#my attempt works
numbers = [7, 9, 13, 25, 18]
n = true

until n == false
 puts numbers
 n = false
end


#lesson example uses incrementation:
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
 puts numbers[count]
 count += 1
end

#9
for i in 1..100
 next if i % 2 == 0
 puts i
end

=end
#10
#made this work - does string interpolation not work in a for loop?
#hmm does in the example
#got it! didn't work because I was using single quotes
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for x in friends
# puts 'Hello, ' + x + '!'
  puts "Hello, #{x}!"
end

