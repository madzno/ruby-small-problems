=begin
Read Problem Outloud
Input: an array
Output: an array with the first element
now as the last element

Rules From Problem;
the original array should not be modified
the first element of the array is now the last element

Rules From Test Cases;
if there is only one element in the array the output is
that one element since there is nothing to be rotated around

Any clarifying Questions?

Data Structure
an array

Algo
define a method rotate array that takes an array as an argument

initialize an empty array called result_array

iterate through the input array and add each element to the
result_array

initialize a variable first to the return value of calling unshift
on the result array

append the variable first to the end of the result array

return the result array

=end

def rotate_array(arr)
  result_arr = []
  arr.each do |element|
    result_arr << element
  end
  first_element = result_arr.shift
  result_arr << first_element
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

#FURTHER EXPLORATION - STRINGS

def rotate_string(string)
 string[1..-1] + string[0]
end

string = 'madeline'
p rotate_string(string)
p string

# FURTHER EXPLORATION - INTEGERS

def rotate_integer(integer)
  digits_array = integer.digits.reverse
  rotate_array(digits_array).join.to_i
end

integer = 1234
p rotate_integer(integer)
p integer

