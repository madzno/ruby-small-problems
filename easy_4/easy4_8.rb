=begin
Read Problem Outloud

Input: a string
Output: a integer, negative or positive

Explicit rules;
1. positive means the string starts with a '+'
2. negative means the string starts with a '-'
3. numbers will be valid
4. numbers will not start with 0
5. numbers will be whole and not floats

Implicit rules:
6. when number has no symbol or starts with a + = a positive number
7. when number starts with a '-' = a negative number

Clarifying Questions
Only symbols the string will start with are - or + ?
Will the strings always start with - or + or can the - or + be at any position
Examples/Test Cases

Data Structure
An array
A hash

Algo
1. define a method `string_to_signed_integer` with a single  parameter `string`
2. initalize an empty string parameter called 'sign'
3. if string starts with '+' , delete it and if it starts
with or '-' delete these from the string and append them ontothe empty string 'sign'
3. pass the now modified string to the helper method 'string_to_integer' and set the
return value to a variable 'integer'
4. if sign = an empty string or +, return the integer
5. if sign = '-' reasign the integer to integer * -1
6. else return the integer as is

=end

def string_to_integer(string)
  digits = string.chars
  numbers = {
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '0' => 0 }
  integer = 0

  digits.map! do |digit|
    digit = numbers[digit]
  end

  digits.each do |digit|
    integer = (10 * integer) + digit
  end

  integer
end

def string_to_signed_integer(string)
  sign = ''
  if string.start_with?('+')
    string.gsub!('+', '')
  elsif string.start_with?('-')
    string.gsub!('-', '')
    sign += '-'
  end
  integer = string_to_integer(string)
  if sign == '-'
    integer *= -1
  else
    integer
  end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
