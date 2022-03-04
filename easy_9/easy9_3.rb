=begin
Read Problem Outloud
Input: an integer
Output: an integer

Rules From Problem;
- if input integer is positive, output integer should be the
negative of that number
- if input integer is negative, ouput integer should be that
number
- if input integer is 0, output integer should be 0

Data Structure
integers
strings

Algo
define a method negative that takes an integer as an argument
if the integer is positive (> 0), return the integer multiplied by
-1
if the integer is negative or equal to 0 (<= 0), return it as is

=end

def negative(integer)
  if integer > 0
    integer * -1
  else
    integer
  end
end

def negative(integer)
  integer > 0 ? integer * -1 : integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
