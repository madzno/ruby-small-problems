=begin
Read Problem Outloud

Input: an array of strings
Output: an array of the same string values, except with values removed

Rules From Problem;
- same array returned
- aeiou removed

Rules from Test Cases;
- input strings of any length but no digits or other characters
- if entire string is made up of vowels (aeiou) then an empty string is returned
in its place

Clarifying Questions
- confirm returning the same array

Data Structure - array

Algo
- define a method 'remove_vowels' with one parameter 0 an array of strings
- iterate through the input array and for each string, delete the characters
aeiou
- return the transformed string

=end

def remove_vowels(arr)
  arr.map! do |string|
    string.delete('aeiou, AEIOU')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
