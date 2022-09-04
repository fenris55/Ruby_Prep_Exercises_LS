=begin
#1
#it will return Breakfast? - yes

#2
#it will return 'Evening'

#3
#will exit method and return 'Breakfast' because 'return' is used

#4
#since 'puts' is used inside the method - it will return both? - yes

#5
#will return the string "Dinner" - once?
#not quite - puts dinner per method instruction
# p causes it to return nil

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

#6
#will return "Breakfast" - explicit return causes the method to end

#7
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

#the above returns 0 - 4 becuase that's what times does
#it's ok that there's no value given for |sheep|
#.times also returns initial number given (5.times)
#so also returns 5, which is the return value

#8
#guess what the below code will print
#since it's very similar to the above, is it the same thing?
#5 will be the return value, so 10 will be ignored?
#NO - 5 is not printed and 10 is the return value - why?
# not the return value bc it's not the last line executed in the method

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

#9 
#will put 0-4 and then return value will be...2? 
#bc 2 will be the first number to meet the criteria to return and then will exit
#OMG NOPE return value is nil bc puts is used in the method
#if is IN the times method - runs 0, 1, 2 and returns at 2
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

=end
#10
#Guessinggg it will return true? since things are by default true?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
  




