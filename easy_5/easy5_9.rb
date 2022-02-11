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

- initialize a variable `result_array``

- For each number in the input array, determine what english word
it is associated with
   - look up the key in integers_to_strings that the is the same as the input integer and
   add that element to the results_array

- sort! the result_array array, now made up of strings from the integers_to_strings hash

- iterate through the integers to strings hash and set each key equal to the current value
and value equal to the key set this to the strings to integers hash

- transform each element in the result_array back to the integer key that it represents
  - look up the key in the strings_to_integers hash that is the same as the input string
  and transform (destructively) that element into its string value

- return the results_array

hash
=end

INTEGERS_TO_STRINGS = {
                       0 => 'zero',
                       1 => 'one',
                       2 => 'two',
                       3 => 'three',
                       4 => 'four',
                       5 => 'five',
                       6 => 'six',
                       7 => 'seven',
                       8 => 'eight',
                       9 => 'nine',
                       10 => 'ten',
                       11 => 'eleven',
                       12 => 'twelve',
                       13 => 'thirteen',
                       14 => 'fourteen',
                       15 => 'fifteen',
                       16 => 'sixteen',
                       17 => 'seventeen',
                       18 => 'eighteen',
                       19 => 'nineteen'
                       }

def alphabetic_number_sort(arr)
  result_array = []

  arr.each do |num|
    result_array << INTEGERS_TO_STRINGS[num]
  end
  result_array.sort!

  strings_to_integers = {}
  INTEGERS_TO_STRINGS.each do |k, v|
    strings_to_integers[v] = k
  end


  result_array.map! do |string|
    string = strings_to_integers[string]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
