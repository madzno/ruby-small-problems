# Build a program that randomly generates and prints Teddy's age.
#To get the age, you should generate a random number between 20 and 200
#Teddy is 69 years old!

age = rand(20..200)
puts "Teddy is #{age} years old!"

#Further Exploration
# Modify this program to ask for a name, and then print the age for that person
# for an extra challenge, use "teddy" as the name if no name is entered

#algo
# puts welcome message explaining program
# ask for a name
# if no name entered, defaults to "Teddy"
# generate a random age
# put out "Teddy is #{age} years old"

puts "Welcome to name and age"
puts "Please enter a name: "
name = gets.chomp
name = "Teddy" if name.empty?
age = rand(20..200)
puts "#{name} is #{age} years old!"




