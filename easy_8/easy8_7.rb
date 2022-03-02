=begin
Read Problem Outloud
Input: a string
Output: a new string with every character doubled

Rules From Problem;
should return a new string

Rules From Test Cases;
any character should be doubled (spaces included)
if an empty string is given it should return an empty string

Data Structure
string, array

Algo
define a method repeater that takes a string as an argument
initialize a varaible result_string to an empty string
iterate through the string's characters and append each character
twice to the result_string
return the result_string

=end

def repeater(string)
  result_string = ''
  string.chars.each do |char|
    result_string << char << char
  end
  result_string
end
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
