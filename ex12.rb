print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

#Study Drill

print "Please provide me some Money Please! "
money = gets.chomp.to_f
money_returned = money * 0.1
print "Thanks! For being so nice, here is " + money_returned.to_s + " back! "