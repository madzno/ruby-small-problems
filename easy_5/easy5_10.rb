=begin

Input; A String

Output; A New string with all consecutive duplicate characters
collapsed into a single character

Clarifying Questions/Assumptions from Problem Description:
- Output is a *new string*
- What is a consecutive duplicate character?


Clarifying Questions/Assumptinons from Test Cases:
- What constitutes a value? Any type of character, including digits, alphabet,
symbols, spaces
- Can input be an empty string - yes from the last test case
- a consecutive duplicate character is the same character in a row
- if there is a single character you keep that one
-

Data Structure
- an array

Algorithim
- define a method 'crunch' that takes one parameter, a string
- if the string is empty, return an empty string
- assign a variable characters to an array of the characters in the input string
- assign a variable result to an empty array
- iterate through the characters by index  pick out the unique characters
    - if the current character is not equal to the character at index + 1,
      add the character to the result array
- return the results array
- join the characters array into a string and return that new string
=end

def crunch(string)
  return '' if string.empty?
  characters = string.chars
  result = []
  characters.each_with_index do |char, index|
    result << char if char != characters[index + 1]
  end
  result.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
