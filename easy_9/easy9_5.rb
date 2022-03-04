=begin
Read Problem Outloud
Input: a string
Output:  a boolean
'true' if all the characters in the input string
are uppercase letters
'false' if otherwise

Rules From Problem;
alphabetic characters should be ignored

Rules From Test Cases;
input can be an empty string and this returns true

Any clarifying Questions?

Data Structure
array

Algo

define a constant equal to an array of all the upper case alphabet characters

define a method uppercase that takes a string as an argument

delete any characters from the string that are non alphabet

split the string into characters and iterate through it,

if all the characters in the remaining string are included in the UPPERCASE
constant, then true is returned, otherwise false is returned

=end

UPPERCASE = ('A'..'Z').to_a

def uppercase?(string)
  alpha_only_string = string.delete('^a-z', '^A-Z')
  alpha_only_string.chars.all? do |char|
    UPPERCASE.include?(char)
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
