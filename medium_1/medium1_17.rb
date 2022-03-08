=begin

Algo

Define a constant 'DIGITS' which is a hash of string
keys and values with the letter version of the number
as the key and the digit version as the value, i.e 'one' => '1'

define a method word to digit that takes a string as an argument

Initialize an empty array variable result_array

split the string argument into an array of its words sperated by spaces and
assign this to a variable words_array

iterate through words_array
- if the current word with any non alphabetic characters deleted is a key in the digits hash,
subsitute the current word with the value of its key in the digits has and append the subsituted
digit with a space afterwards to the results string

otherwise just append the word with a space to the ressult_array

return the result_array joined into a string
=end

DIGITS = {
          'one' => '1',
          'two' => '2',
          'three' => '3',
          'four' => '4',
          'five' => '5',
          'six' => '6',
          'seven' => '7',
          'eight' => '8',
          'nine' => '9' }

def word_to_digit(string)
  words_array = string.split
  result_array = []

  words_array.each do |word|
    if DIGITS.has_key?(word.delete('^A-Z', '^a-z'))
      result_array << word.gsub(word.delete('^A-Z', '^a-z'),
        DIGITS[word.delete('^A-Z', '^a-z')])
    else
      result_array << word
    end
  end
  result_array.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
