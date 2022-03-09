=begin
Input = three integers
Ouptut = a symbol representing the triangle angle or if the
triangle is invalid

Rules/Test examples
Sum of all three numbers must be exactly 180 degrees and
all numbers must be greater than 0 to be considered valid

a right angle is when one number is equal to 90 degrees
acute is when all numbers are less than 90 degrees
an obtuse number is when one angle is greater than 90 degrees

data structure
an array

algorithm
define a method triangle that takes three numbers as arguments

initialize an array to the three input numbers

first find out if the triangle is valid,
all three numbers must sum to exactly 180 degrees
all numbers must be greater than 0

if the triangle is valid then determine what type of angle it is
if one of the numbers is equal to 90, then the triangle is a
right angle triangle

if all three numbers are less than 90 degrees then the triangle is
a acute triangle

if one number is greater than 90 degrees then the triangle is
an obtuse triangle
=end

def valid_triangle?(arr)
  arr.sum == 180 && arr.all? { |num| num > 0 }
end

def triangle(num1, num2, num3)
  angles = [num1, num2, num3]
  if valid_triangle?(angles) == false
    :invalid
  elsif angles.any? { |num| num == 90 }
    :right
  elsif angles.all? { |num| num < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

