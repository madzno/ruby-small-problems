=begin
Read problem outlout

Input: a string of words, or an empty string
Ouptut: a new string of words with each word reversed, or empty string

Rules from Problems/Test cases
empty string or any amount of spaces returns a new empty string

Patterns from Test cases

Data Structure
array
string

Algo

define a method reverse_statement that takes a string as an argument

split the string into an array of words and assign this to words_array

initialize an empty array result_array

iterate through the words array and prepend each word on to the beginning
of the resuls array

return the results array and join it into a string

return that string

=end

def reverse_sentence(string)
  words_array = string.split
  result_array = []
  words_array.each do |word|
    result_array.prepend(word)
  end
  result_array.join(' ')
end

p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'
p reverse_sentence('') == ''
p reverse_sentence('    ') == '' # Any number of spaces results in ''
