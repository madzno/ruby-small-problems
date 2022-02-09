=begin
Input; a string of words
Ouptut; a hash with integer keys that represent the words size
and integer values that represent the number of words that match that size

clarifying questions/rules
1. key is an integer that counts the number of characters in each word
- characters count as anything other than a space, alphabetic characters and
symbols included
2. a word is deliniated by a space
3. a space does not count as a word
4. value is the number of words that have are the same size in the input string

data structure
Hash
Array

Algo
- define a method word_sizes with one parameter a string
- initalize a variable result_hash equal to an empty hash
- initalie a variable character_counts to an empty array
- split the string into words based on spaces (if input is an empty string this will give
an empty array)
- return result_hash as is if string.split is empty
- split each word into its characters
- count the number of characters in each word
- add this integer to the empty array, 'character counts'
- make the character counts unique
- iterate through character counts and add each integer as a key to the results_hash
and make each value equal to 1
- split the input string into words based on spaces and iterate through
the words array by index
- for each word compare its size to all other words in the array (words at index 0 to array.size -1)
- if the current word.size === word.size at any of the other indexes, add 1 to
the value of the key in the results_hash that is equal to the current words size.

=end

def word_sizes(string)
  result_hash = {}
  character_counts = []
  values = []
  words_array = string.split
  return result_hash if string.split.empty?
  words_array.each do |word|
    character_counts << word.chars.count
  end
  character_counts.uniq.each do |integer|
    result_hash[integer] = 1
  end
  words_array.each_with_index do |word, index|
    if (words_array[0].size..words_array[-1].size).include?(words_array[index].size)
      result_hash[words_array[index].size] += 1
    end
  end
  result_hash
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}
