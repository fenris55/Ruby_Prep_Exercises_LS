=begin
#1
sun = ["visible", "hidden"].sample
if sun == "visible"
  puts "The sun is so bright!"
end

#2
sun = ["visible", "hidden"].sample
unless sun == "visible"
  puts "The clouds are blocking the sun!"
end

#3
sun = ["visible", "hidden"].sample
puts "The sun is so bright!" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"

#4
boolean = [true, false].sample
boolean ? (puts "I'm true") : (puts "I'm false") #or puts("I'm true")

#5
#will puts true

#6
stoplight = ["red", "green", "yellow"].sample

case stoplight
when "green"
  puts "Go!"
when "yellow"
  puts "Slow down!"
else
  puts "Stop!"
end

#7
#convert above case statement to if statement

stoplight = ["red", "green", "yellow"].sample

if stoplight == "green"
  puts "Go!"
elsif stoplight == "yellow"
  puts "Slow down!"
else
  puts "Stop!"
end

#8
status = ["awake", "tired"].sample

if status == "awake"
  status_update = "Be productive!"
else
  status_update = "Go to sleep!"
end

puts status_update

#the above works; trying exercise answer below
#this one looks messier but it's simpler

status = ["awake", "tired"].sample
alert = if status == "awake"
          "Be productive!"
        else
          "Go to sleep!"
        end
        
puts alert

#9
#fix the error
number = rand(10)

if number == 5
  puts "5 is a cool number!"
else 
  puts "Other numbers are cool too!"
end

=end

#10
#reformat to be only 5 lines
stoplight = ["red", "green", "yellow"].sample
case stoplight
when "green"  then puts "Go!" 
when "yellow" then puts "Slow down!" 
else               puts "Stop!" 
end

# had to look up the "then"