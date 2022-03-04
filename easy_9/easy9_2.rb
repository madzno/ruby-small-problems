=begin
Read Problem Outloud
Input: an integer
Output: an integer that represents 2 times
the number provided unless the argument is a double number,
double numbers should be returned as is

Rules From Problem;
- multiply input integer by 2 unless the integer is a double
number

Rules From Test Cases;
- input numbers are whole numbers and can be large numbers greater
than 0

Any clarifying Questions?

Data Structure
array

Algo
define a method twice that takes an integer as an argument

if the integer is a double number, return the integer
method to determine if the integer is a double number
split the integer into digits and assign the reversed version of this to an
array 'digits'
determine the halfway point of the digits array (array.length / 2)
slice the digits array from 0 to the halfway point and assign this to arr1
slice the digits array from the halfway point to the end of the string and assign
this to arr 2
return true if arr1 and arr2 are equal

if the integer is not a double number, return the integer multiplied by 2

=end

def double_number?(integer)
  digits_array = integer.digits.reverse
  middle = digits_array.length / 2
  arr1 = digits_array[0..middle - 1]
  arr2 = digits_array[middle..-1]
  digits_array.size > 1 && arr1 == arr2
end

def twice(integer)
  if double_number?(integer)
    integer
  else
    integer * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
