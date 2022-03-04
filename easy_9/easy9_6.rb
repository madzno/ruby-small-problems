=begin
Read Problem Outloud
Input: an string
Output: an array of strings that represent the words
in the input string seperated by a space and then the length
of the string

Rules;
words in the string are seperated by one space
any substring of non space characters is a word
if input string is empty output array will be empty
all characters in the word count in the length (alphabet
and non alphabet)

Data Structure
an array

Algo
define a method word_lengths that takes a string as an argument
initialize an empty array called word_counts
split the string into words based on space and assign this to a
variable words_array
iterate through the words array and append each length as a string
to word_counts
create a multidimensional array of sub_arrays
that contain each of the  words in the words words_array with
their corresponding counts in the  counts_array and assign
this to the results array
join each of the sub arrays by a space in the results array

=end

def word_lengths(string)
  counts_array = []
  words_array = string.split
  words_array.each do |word|
    counts_array << word.length.to_s
  end
  result_array = words_array.zip(counts_array)
  result_array.map do |sub_array|
    sub_array.join(' ')
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
