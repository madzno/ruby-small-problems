=begin
Read Problem Outloud
Input: a string
Output: an array of substrings that start at the beginning of the original string
the return value should be arranged in order from shortest to longest

Rules;
arranged from shortest to longest
all sub strings start with the beginning of the original string
input string can be any length
input string will not be empty

Any clarifying Questions?

Data Structure
array

Algo
define a method leading_substring that takes a string as an argument
initialize an empty array variable called substrings
initialize a variable that represents the starting index to 0
from the starting_index (0) until the string's length minus 1, assign these
numbers to the ending index
append each substring of string that runs from the starting index to the current
ending index to the substrings array
sort the substrings array by string length (might be unneccessary)
return the substrings array

=end

def leading_substrings(string)
  sub_strings = []
  starting_index = 0
  (0..string.length - 1).each do |ending_index|
    sub_strings << string[starting_index..ending_index]
  end
  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
