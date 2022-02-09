=begin
Problem
Input; a string made up of all lowercase words and
non-alphabetic characters
output; a string with only words and spaces

Test Examples
see below

Clarifying questions/rules
1. replace each alphaneumeric character with a space
2. if more than one alphaneumeric character there should
only be one space
3. returning the same string not a new one

Algo
- define a method 'cleanup' with a parameter 'string'
- split string into characters and assign that to an array
called characters
- iterate through characters by index, if the element is not
included in the range of lower case alphaneumeric characters
subsitute the element at that index with a space
- iterate again through the characters arra now containing spaces
instead of symbols
 - start at index 1
 - if an element at the current index is equal
to a space and the element previous to it (index - 1) is
equal to a space, delete that element destructively
=end

def cleanup(string)
  characters = string.chars
  clean_chars = []

  characters.each do |character|
    if ('a'..'z').to_a.include?(character)
      clean_chars << character
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
