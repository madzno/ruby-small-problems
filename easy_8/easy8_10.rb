=begin
Read Problem Outloud
Input: non empty string argument
Output: returns the middle character or characters of the argument

Rules From Problem;
- if argument has an odd length you should return exactly one character
if the argument has an even length you should return exactly two characters

Rules From Test Cases;
- characters can be alphabetic, symbols, ect.
"I love ruby"
0 = I
1 = ' '
2 = l
3 = o
4 = v
5 = e **
6 = ' '
7 = r
8 = u
9 = b
10 = y
"Launch"
0 = L
1 = a
2 = u **
3 = n **
4 = c
5 = h

Data Structure
string/array

Algo
define a method center_of

initialize a variable result string to an empty string

if length of the input string is odd
divide the length of the string by 2 to find the middle index
append the character at that middle index to result string

if the length of the input string is even
divide the length of the string by 2 to find the 'middle'
append the 'middle' character and the character 1 index before it to result string

return result string

=end

def center_of(string)
  result_string = ''
  if string.length.odd?
    middle_index = string.length / 2
    result_string << string[middle_index]
  else
    middle_index = string.length / 2
    result_string << string[middle_index - 1] << string[middle_index]
  end
  result_string
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
