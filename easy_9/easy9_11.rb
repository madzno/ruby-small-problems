=begin
Read Problem Outloud
Input: an array
Output: multiple arrays of words that are anagrams

Rules From Problem;
An amagram are words that have the same
exact letters in them but are in different order

Rules From Test Cases;
['demo', 'dome', 'mode']
['neon', 'none']
['flow', 'wolf', 'fowl']
['tied', 'edit', 'tide', 'diet']
['evil', 'live', 'veil']
Any clarifying Questions?
all words four letters

Data Structure
initialize an empty hash variable called anagrams


if the hash has the current key,

Algo

initialize an empty hash variable result_hash

iterate over the input array and assign

a variable 'key' to the return value of splitting each word into characters and sorting
those characters and then joining the results

if the result_hash has a key that matches the current key, then add the current
word to that key's value

if the result_hash does not have a key that matches the current key, then add the current
key as a key and set its value equal to an array containing that key

iterate over each value in the result hash and output it

=end

def anagrams(arr)
  result_hash = {}
  arr.each do |word|
    key = word.chars.sort.join
    if result_hash.has_key?(key)
      result_hash[key] << word
    else
      result_hash[key] = [word]
    end
  end
  result_hash.each { |k, v| p v }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)
