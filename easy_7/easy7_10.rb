=begin
Read Problem Outloud
Input: a string
Output: a string with the same valeu as the second to last word in the input string

Rules From Problem;
- words are any sequence of non blank characters
- can assume input string will always contain two words

Data Structure
A string, an array

Algo
split the input string into an array containing words
return the word at index -2 of the input array

=end

def penultimate(string)
  words = string.split
  words[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
