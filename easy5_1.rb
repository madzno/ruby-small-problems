=begin
Problem
Input = a string
Output = an integer , the ASCII string value

Examples
See Below

Data Structure
array

Algo
1. define a method ascii_value with one parameter, a string
1a. return 0 if input is an empty string
2. split the string into characters and assign to an array characters
3. transform each character into its ASCII value
4. sum up the values
5. return this sum
=end

def ascii_value(string)
  return 0 if string.empty?
  characters = string.chars
  characters.map! { |character| character.ord }
  characters.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

