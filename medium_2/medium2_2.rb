=begin
Read problem outlout

Input: a string
Ouptut: a boolean true/false

Rules from Problems/Test cases

we are given thirteen letter pairs that represent the 26 letters
of the alphabet

if the input string has letters that are all unique to the pairs, then
the method returns true

if the output strin has letters that are a part of the same pair, then
the method returns false

doesn't matter if input string is lowercase or uppercase, the pairs
still apply

Data Structure
hash
an array


Algo

initialize a constant PAIRS to a multidimensional array with each sub array containing
the two characters for each of the pairs shown in the list

define a method block_word? that takes a string as an argument

upcase the characters in the string and
split the string into characters and assign the return value to a variable characters

iterate through the PAIRS multidimensional array, if for any of the pairs the characters
array returns true for including both the character at index 0 and the character at index 1,
return false from the method

otherwise return true

=end

PAIRS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'],
['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(string)
  characters = string.upcase.chars
  PAIRS.each do |pair|
    if characters.include?(pair[0]) && characters.include?(pair[1])
      return false
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
