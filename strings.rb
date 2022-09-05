=begin
#1
new_string = String.new

#2
#modify to use double quotes
#puts 'It\'s now 12 o\'clock.'
#puts "It's now 12 o'clock."
#puts %Q(It's not "your" apple.)
puts %q(It's not "your" apple.)

#3
name = "Roger"
if name.downcase == "RoGeR".downcase
  puts "true"
else 
  puts "false"
end

if name.downcase == "DAVE".downcase
  puts "true"
else
  puts "false"
end

#the above works - trying to refactor with method below

def name_comp(test_name)
  name = "Roger"
  if name.downcase == test_name.downcase
    puts "true"
  else
    puts "false"
  end
end

name_comp("RoGeR")
name_comp("DAVE")

#the above method also works
#solution uses .casecomp - see below

name = "Roger"
puts name.casecmp("RoGeR") == 0
puts name.casecmp("DAVE") == 0

#4
name = "Elizabeth"
puts "Hello, #{name}!"

#5
first_name = "John"
last_name = "Doe"

full_name = "#{first_name} #{last_name}"
puts full_name

#6
state = "tExAs"
state.capitalize!
puts state

#7
greeting = "Hello!"
greeting.sub!("Hello!", "Goodbye!") #found .sub! on rubydocs - example uses .gsub!
puts greeting

#8
alphabet = "abcdefghijklmnopqrstuvwxyz"
puts alphabet.split(//)

#9
words = "car human elephant airplane"
words.split.each do |word|
 puts word + "s"
end


#10
#this could be wayyy simpler see below
colors = "blue pink yellow orange"
if colors.split.include?("yellow")
  puts true
else 
  puts false
end

if colors.split.include?("purple")
  puts "true"
else 
  puts "false"
end

=end

colors = "blue pink yellow orange"
puts colors.include?("yellow")
puts colors.include?("purple")
