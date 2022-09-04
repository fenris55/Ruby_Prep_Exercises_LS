=begin
#1

def print_me
  puts "I'm printing within the method!"
end

print_me

#2

def print_me
  "I'm printing the return value!"
end

puts print_me

#3

def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world
#can also use string interpolation here since the methods resturn strings

#4

def hello
  "Hello"
end

def world
  "World"
end

def greet
  hello + " " + world
end

puts greet

#5
def car(x, y)
  puts "#{x} #{y}"
end

car('Toyota', 'Corolla')

#5 - repeat the above but remove puts from method - how do they differ?

def car(x, y)
  "#{x} #{y}"
end

puts car('Toyota', 'Corolla')
#in the first, return value is nil bc puts is in the method
#in the second, return value is the string returned

#6
daylight = [true, false].sample

def time_of_day(boolean)
  puts "It's daytime!" if boolean == true
  puts "It's nighttime!" if boolean == false
end
#example uses if/else in the method
time_of_day(daylight)

#7
#find and fix the errors to give correct output
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}"
puts "The cat's name is #{cat('Ginger')}"

#8

def assign_name(name='Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

#9

def add(num1, num2)
  num1.to_i + num2.to_i
end

def multiply(a, b)
  a.to_i * b.to_i
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

=end
#10

names = ['Dave', 'Sally', 'George', 'Jessica']
activities= ['walking', 'running', 'cycling']

def name(who)
  who.sample
end

def activity(what)
  what.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))