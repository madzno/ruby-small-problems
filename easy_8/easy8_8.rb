=begin
Read Problem Outloud
Input: a string
Output: a string in which every consonant character is doubled
(vowels a e i o u), digits, punctuation and whitespace should not be doubled

Rules From Problem;
- only double constanents

Rules From Test Cases;
- if empty string return an empty string
- vowels and other characters should still appear in the output string

Any clarifying Questions?

Data Structure
initialize a constant equal to an array of vowel strings
initialize a constant equal to an array of upper case alphabetic characters
initialize a constant equal to an array of lower case alphabetic characters
define a method double_constonants that takes a string argument
initialize an empty string variable result
iterate through the characters of the string argument
if the char is not in the vowel strings array but IS in the upper case or lower case
array, then add it twice to result string
otherwise add it once
return the result string

Algo

=end

VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def double_consonants(string)
  result_string = ''
  string.each_char do |char|
    if !VOWELS.include?(char) &&
       (UPPERCASE.include?(char) || LOWERCASE.include?(char))
      result_string << char << char
    else
       result_string << char
    end
  end
  result_string
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

