=begin
Problem
Return a sorted hash where each key is a words length in the input string and
value is number of words with that length

Input - string
output- hash

clarifying questions/examples
examples - see below
characters - only alphaneumeric, non alphaneumeric characters are not considered
characters in this example
keys of output hash should be sorted
key and value are integers

data structure
array
hash

algo
1. permenantly delete all characters from string that arent lowercase alphabet
characters, uppercase alphabet characters, or spaces
=end


def word_sizes(string)
  result_hash = {}
  character_counts = []
  values = []
  string.delete!('^a-zA-Z', '^" "')
  words_array = string.split

  return result_hash if string.split.empty?

  words_array.each do |word|
    character_counts << word.chars.count
  end

  character_counts.uniq.sort.each do |integer|
    result_hash[integer] = 0
  end

  words_array.each do |word|
    result_hash[word.size] += 1
  end

  result_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
