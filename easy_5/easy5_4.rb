=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Examples:

Problem
Input; a string
Ouptut; a string first and last letters of every word are swapped

Questions
- empty string as input? No
- words in the string will be alphabet characters, no symbols or digits
- input string can be only one word or multiple words
- output string is a new string

Test Examples
See below

Data structure = Array
a, b = b, a
Algo
- define a method swap that takes one string parameter
- split the string parameter by spaces and assign this return value (an array) to a variable words_array
- initalize a empty string variable called result_string
- iterate through words_array and get each individual word
- split each word into individual characters
and assign this to a variable characters_array
- iterate through the characters_array
- assign last_character to the result of characters_array.pop
- assign first_character to the result of characters_array.unshift
- append the first character characters_array
- prepend the last_character to the beginning of the characters array
- join the characters array
- add this to result_string
- join with a space the result_string
=end

def swap(string)
  words_array = string.split
  result_string = ''
  words_array.each do |word|
    character_array = word.chars
    last_character = character_array.pop
    first_character = character_array.shift
    character_array << first_character
    character_array.unshift(last_character)
    result_string << character_array.join
    result_string << ' '
  end
  result_string.chop
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
