=begin
Read Problem Outloud
Input: a string
Output: returns a new string that contains original value
used in a 'staggered capitalization scheme'

Rules;
- return a new string
- what is a staggered capitalization scheme?
- every other character is capitalized and remaining characters
are lower case
- start with first character as capitalized
- characters that are not letters *count* with the very other
order but are not changed

Data Structure
an array/string

Algo
- define a method staggered_case that takes a string as an argument
- initialize an empty array result_array
- split the input string into characters and iterate through that
array of characters by index
- if the index is even, capitalize the character at that index and
add it to the result_array
- if the inedex is odd, downcase the character at that index
and add it to result_array
- join result_array into a string
=end

def staggered_case(string)
  result_array = []
  string.chars.each_with_index do |char, index|
    if index.even?
      result_array << char.upcase
    else
      result_array << char.downcase
    end
  end
  result_array.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
