=begin
Read Problem Outloud
Input: a positive integer
Output: displays a right triangle whose sides each have 'n' stars
diagnal side of the triangle should have one end at bottom left and
upper side at top right

Rules From Test Cases;
- bottom row of triangle has no indents and then
idents increase by one upwards

Any clarifying Questions?

Data Structure
a string

Algo
- define a method 'triangle' with one parameter an integer
- initialize a variable spaces equal to 0
- while integer is greater than or equal to 1
- output blank space multiplied by the current spaces integer
and stars multiplied by the current integer
- subtract 1 from integer
- add 1 to spaces

=end

def triangle(num)
  spaces = num - 1
  stars = 1
  while stars <= num
    puts "#{' ' * (spaces)}#{'*' * (stars)}"
    stars += 1
    spaces -= 1
  end
end

triangle(5)
triangle(9)
