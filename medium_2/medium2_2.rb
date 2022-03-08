=begin
Read problem outlout

Input: a string
Ouptut: a boolean true/false

Rules from Problems/Test cases

we are given thirteen letter pairs that represent the 26 letters
of the alphabet

if the input string has letters that are all unique to the pairs, then
the method returns true

if the output strin has letters that are a part of the same pair, then
the method returns false

doesn't matter if input string is lowercase or uppercase, the pairs
still apply

Data Structure
hash
an array


Algo

initialize a constant PAIRS to a hash with all alphabet letters
as keys and their corresponding pairs as values

define a method block_word? that takes a string as an argument

iterate through the string by character and look up the hash value
associated with that character's key if the rest of the string includes
that character, return false

otherwise return true

=end

PAIRS = {
          'B' => 'O',
          'O' => 'B',
          'X' => 'K',
          'K' => 'X',
          'D' => 'Q',
          'Q' => 'D',
          'C' => 'P',
          'P' => 'C',
          'N' => 'A',
          'A' => 'N',
          'G' => 'T',
          'T' => 'G',
          'R' => 'E',
          'E' => 'R',
          'F' => 'S',
          'S' => 'F',
          'J' => 'W',
          'W' => 'J',
          'H' => 'U',
          'U' => 'H',
          'V' => 'I',
          'I' => 'V',
          'L' => 'Y',
          'Y' => 'L',
          'Z' => 'M',
          'M' => 'Z'
          }

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
