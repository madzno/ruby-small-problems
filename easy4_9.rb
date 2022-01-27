=begin

Problem

Input; An integer
Output; A string representation of that integer

Examples
Below

Rules
- input number is a whole number
- no more than one 0 on the input number
- input number can be 0
- input number does not have any sinage, + or `

Data Structure
Hash
Array

Algorithm
1. define a method intger_to_string with one parameter integer
2. set a hash digits_hash that has the digits 0 through 10 as keys and there string counterparts as values
3. split the integer into digits and set the return value to an array called digits
4. iterate through the digits array and transform each digit into its string counterparts
6. join the digits array and return
=end
def integer_to_string(integer)
  digits = integer.digits.reverse
  digits_hash = {
    0 => '0',
    1 => '1',
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9'
  }
  digits.map! do |digits|
    digit = digits_hash[digit]
  end
  digits.join
end

integer_to_string(4321) == '4321'
#p integer_to_string(0) == '0'
#p integer_to_string(5000) == '5000'
