# number of cars
cars = 100
# how many does each car carry
space_in_a_car = 4.0
# number of drivers
drivers = 30
# number of passengers
passengers = 90
# number of cars not being used
cars_not_driven = cars - drivers
# cars used is equal to drivers available
cars_driven = drivers
# cars in use multiplied by amount of people in each car
carpool_capacity =  cars_driven * space_in_a_car
# how many people in each car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."