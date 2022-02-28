=begin
Read Problem Outloud
Input: a string
Output: a new string

Rules From Problem;
- new string contains the original words of the argument
with the first character of every word capitalied and all other letters
lowercase
- string will be any sequence of non-blank characters

Rules From Test Cases;
- if word starts with a symbol it is not capitalized
-only the first character of words not starting with a symbol are capitalized
- a word is specified by a space

Any clarifying Questions?

Data Structure
array

Algo
define a method word_cap with one parameter, a string
initialize an empty array to a variable result_array
split the input string into words based on spaces
iterate through the array of strings and capitalize the first character
of each word and append this capitalized word to the result_array
return a string of the words in the results array joined with a space

=end

def word_cap(string)
  result_array = []
  string.split.each do |word|
    result_array << word.capitalize
  end
  result_array.join(' ')
end


=begin
- define a method word_cap that takes a string as an argument
- split the string into words
- iterate through the words array and split each of the string words
into characters, this is now a multidimensional array containing arrays
of characters
- iterate through each sub-array and transform/capitalize the first character element
of each sub array, each sub array now has a capitalized element at index 0
- iterate through the words array again and transform each sub array into a string
using join
- join the words array with a space
=end
def word_cap(string)
  words_array = string.split
  words_array.map! do |string|
    string.chars
  end
  words_array.map! do |sub_array|
    sub_array[0].upcase!
    sub_array.join
  end
  words_array.join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
