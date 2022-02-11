=begin
Problem
Input
- An array of integers between 0 and 19

Output
- returns a new array of integers sorted based ont he English words
for each number

Example
See Below

Clarifying Questions
- Input array - an array of integers from 0 to 19 - can the array
contain any other numbers? - based on test example - no
- 'based' on the english words for each number
what this means:
- sorting based on strings and not integers
- words that start with characters that are earlier in the alphabet
are sorted first to characters that are later in the alphabet
- shorter words are sorted first than longer words
- integers in the output array will be based on the numbers
position in that order (i,e eight is first - index 0, eighteen
is next - index 1, ect.)

Data structure - Array

Algo
- Declare a constant called integers_to_strings with keys that represent
each integer from 0 - 19 and values that represent the string representation
of that integer

- Define a method 'alphabetic_number_sort' with one parameter that represents
the input array

- initialize a variable `sorted_words` equal to an array of the values in the
integers_to_strings constant hash, sort the words array of strings

- initialize a variable `input_words` to an empty array

- initialize a variable `result_hash` to an empty array

- For each number in the input array, determine what english word
it is associated with
   - look up the key that the is the same as the input integer and add
   that key's value to the input words array

- for each element in the input words array

- look up that word in the constant 'words'
=end


alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
