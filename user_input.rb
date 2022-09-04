=begin
User Input exercises

#1
puts "What's on your mind?"
response = gets.chomp
puts response

#2
puts "How many years old are you?"
age = gets.chomp.to_i
months = age * 12
puts "You are #{months} months old!"

#3 & 4
puts "Do you want me to print something? (y/n)"
response = gets.chomp.downcase

puts "something" if response == "y"

if response != "y" && response != "n"
 puts "Sorry, please enter y or n."
end

#example solution

choice = nil

loop do
 puts "Do you want me to say something? (y/n)"
 choice = gets.chomp.downcase
 break if %w(y, n).include?(choice)
 puts "Invalid input! enter y or n."
end
puts "something" if choice == "y"

#5
#solve this with if/else and until. Exercises uses loop and while
puts "Pick a number greater than 3: "
number = gets.chomp.to_i
if number < 3
 puts "Oops! I said GREATER than 3!"
else
 counter = 0
 until counter == number do 
 puts "Launch School is the best!"
 counter += 1
 end
end

#trying exercise solution
number_of_lines = nil

loop do
 puts "How many lines should I print? Pick a number equal to or greater than 3:"
 number_of_lines = gets.chomp.to_i
 break if number_of_lines >= 3
 puts "That's not enough lines!"
end

while number_of_lines > 0
 puts "Launch School is the best!"
 number_of_lines -= 1
end

#6 & 7
#initialize password with constant here
USERNAME = "mollyMoon"
PASSWORD = "noodles"

loop do 
 puts "Please enter your user name: "
 user_name_input = gets.chomp
 puts "Please enter your password: "
 password_entry = gets.chomp
 
 break if password_entry == PASSWORD && user_name_input == USERNAME
 puts "Sorry, that's incorrect. Try again." 
end

puts "Hello, and welcome to Launch School!"

#8
def valid_number?(number_string)
 number_string.to_i.to_s == number_string
end
 
number1 = nil
loop do
 puts "Enter a number:"
 number1 = gets.chomp
 
 break if valid_number?(number1)
 puts "Number must be a positive integer!"
end

number2 = nil
loop do
 puts "Enter another number. Must be greater than zero:"
 number2 = gets.chomp
 
 if number2 == "0"
  puts "Oops! Your number must be greater than zero!"
 else 
  break if valid_number?(number2)
  puts "Number must be a positive integer!"
 end
end

output = number1.to_i / number2.to_i
puts "#{number1} divided by #{number2} equals #{output}!"

#9
loop do 
 input_string = nil 
 number_of_lines = nil

 loop do 
  puts "Enter a number greater than 3. Type q to quit."
  
  input_string = gets.chomp
  break if input_string.downcase == "q"
  
  
  break if input_string.to_i >= 3
  
  puts "Must be an integer greater than 3."
 end
 
 break if input_string.downcase == "q"

 while number_of_lines.to_i > 0
  puts "Launch School is the best!"
  number_of_lines.to_i -= 1
 end
 
end

=end

#10
def valid_number?(number_string)
 number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
 loop do
 puts "Enter a number:"
 number = gets.chomp
 return number.to_i if valid_number?(number)
 puts "Invalid. Only valid integers are allowed. Don't enter zero."
 end
end
 
number1 = nil
number2 = nil

loop do 
 number1 = read_number
 number2 = read_number
 break if number1 * number2 < 0
 puts "Sorry, enter one negative number and one positive number"
end

result = number1 + number2
puts "#{number1} plus #{number2} equals #{result}!"
