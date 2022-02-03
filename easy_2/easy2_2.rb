#Build a program that asks a user for the length and width of a
#room in meters and then displays the area of the room in both
#square meters and square feet Note: 1 square meter == 10.7639
# square feet
#Do not worry about validating the input at this time.

=begin
##Problem

Input; Length of room in meters (integer) Width of room in meters(integer)
Output; Area of the room in square feet (float) and square meters (float)

Explicit rules;
-input is in meters
-output is in square feet
Implicit rules;
- input is a whole integer > 0
- output is a float with 2 decimal points
Clarifying Questions
- no need to validate input
##Examples/Test Cases
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753. 47 square feet)

##Data Structure

##Algo
#ask the user for the length of the room in meters
# set user input to a variable called length
# ask the user for the width of the room in meters
# set user input to a variable called width
# calculate the length in feet and set to variable length in feet
# calculate the width in feet and set variable to width in feet
# calculate the square meters from length and width
# calculate the square feet fro length in feet and width in feet
# output the results of both square meeters and square feet to the user

=end

SQMETERS_TO_SQFEET = 10.7639

def prompt(message)
  puts "==> #{message}"
end

prompt("Welcome to 'How big is the room?")

prompt("Enter the length of the room in meters:")
length = gets.to_f

prompt("Enter the width of the room in meters:")
width = gets.to_f

square_meters = length * width
square_feet = square_meters * SQMETERS_TO_SQFEET

puts "The area of the room is #{format("%.2f", square_meters)} square " \
       "meters (#{format("%.2f", square_feet)} square feet)."



