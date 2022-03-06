=begin
Read Problem Outloud
Input: a string
Output: a string with the input string integer words converted
their digit representations

Only the words
'one' 'two' 'three' 'four' five' 'six' 'seven' 'eight' 'nine' will be used

Data Structure
hash
array

Algo
initialize a constant the DIGITS hash with keys equal to the string representation
of the integers to the right

split the input string into an array of words

iterate through the array of words and if the word is a key in the DIGITS hash
transform that string to the value version of it
if it is not a key, then return the string as is

join the transformed array into a string with spaces in between

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
  'nine' => '9'
  }

def word_to_digit(string)
  words_arr = string.split
  result_arr = []
  words_arr.each do |word|
    if DIGITS.has_key?(word.delete('^a-z', '^A-Z'))
      result_arr << DIGITS[word.delete('^a-z', '^A-Z')]
    else
      result_arr << word
    end
  end
  result_arr.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
