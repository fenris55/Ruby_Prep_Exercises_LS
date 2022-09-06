=begin
#1
pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}!"

#2
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2, 3] #example uses a range pets[2..3]

puts "I have a #{my_pets[0]} and a #{my_pets[1]}!" #my_pets creates new array

#3
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

puts "I have a pet #{my_pets[0]}!"

#4
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2..3]
my_pets.pop
my_pets.push(pets[1]) #parentheses optional - used in example

puts "I have a #{my_pets[0]} and a #{my_pets[1]}!"

#5
colors = ['red', 'yellow', 'purple', 'green']
colors.each do |color|
  puts "I'm the color #{color}!"
end

#6
numbers = [1, 2, 3, 4, 5]

#used the below format bc I;ve seen it in a previous exercise
#this is the same as the exercise solution BUT
#really don't like this format. Loks messy. Alternative?
doubled_numbers = numbers.map do |number|
                     number.to_i * 2
                  end

p doubled_numbers #using p to print the array

#7
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select do |number|
  number %  3 == 0
end

p divisible_by_three

#8
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

#9
#example assigns this to a new array - seems unneccesary?
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten

=end
#10
array1 = [1, 5, 9]
array2 = [1, 9, 5]

#p array1 <=> array2 # returns -1 and exercise is to print true or false
#resorting to if/else - think there's a better way
#LOL  sure is -- see below
if array1 == array2 
  puts "true"
else
  puts "false"
end
#exercise solution
p array1 == array2