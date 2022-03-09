=begin

Input: three integers that represent the sides of a triangle
Output: a symbol, :equilateral, :isoscelees, :scalene, or :invalid
depending on whether the triangle is equilateral, isosceles, scalene, or
invalid

Rules/Test Cases

#1 triangle must be valid
- sum of the length of the two shortest sides must be
greater than the length of the longest side and all sides must
have lengths greater than 0

#2 if the triangle is valid then decide which type it is
- equilateral
all three sides are equal

- isosceles 2 sides are of equal length and third is different

-scaline all three sides are different sides

Data structure
array?

Algo

initilaize an array sides that contains num1, num2, and num3 as elements and sorts
these elements according to numerical value (smallest number will be first and
longest last)

A) Determine if the sides constitute a valid triangle
sum of the first two elements must be greater than the length of the largest element
AND
all sides must be greater than 0

B) Determine if what type of triangle is represented if the triangle is valid
if all three numbers are equal, the triangle is equilateral
if two sides of the triangle are equal num1 + num2, num2 + num1, num2 + num 3
then the triangle is isosceles

otherwise the triangle is scalene
=end

def valid_triangle?(arr)
  ((arr[0] + arr[1]) > arr[2]) && arr.all? { |num| num > 0 }
end

def triangle(num1, num2, num3)
  sides = [num1, num2, num3].sort
  if valid_triangle?(sides) == false
    :invalid
  elsif num1 == num2 && num2 == num3
    :equilateral
  elsif num1 != num2 && num2 != num3
    :scalene
  else
    :isosceles
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
