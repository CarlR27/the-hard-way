#sets variable cars equal to 100
cars = 100
#sets variable space_in_a_car t0 4.0
space_in_a_car = 4.0
#sets variable drivers to 30
drivers = 30
#sets passengers to 90
passengers = 90
#calculates cars_not_driven equal to cars - drivers
cars_not_driven = cars - drivers
#sets cars_driven equal to number of drivers
cars_driven = drivers
#calculates carpool_capacity to cars_driven * space_in_a_car
carpool_capacity = cars_driven * space_in_a_car
#calculates the average_passengers_per_car to passengers / cars_driven
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car." 