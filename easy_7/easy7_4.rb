=begin
Read Problem Outloud
Input: a string
Output: a new string with the cases of each letter switched

Rules From Problem;
- cannot use string swapcase method
- every upper case is replaced by lower case
- every lower case is replaced by upper case
- all other characters, i.e quotes, symbols, spaces should
be left unchanged

Data Structure
An string or an array

Algo
- initialize a constant UPERCASE equal to an array of A-Z
- initialize a constant LOWERCASE equal to an array of a-z
- define a method swapcase that takes a string as an argument
- initialize a variable result_string to an empty string
- initialize a variable index to 0
- invoke the loop method
- if the current character at string[index] is included
in UPPERCASE, downcase it and append it to result string
- if the current character is included in LOWERCASE upcase it
and append it to the result string
- otherwise append the character as is to result string
- add 1 to the index
- break out of the loop if index is equal or greater than the
input string's length
- return the result string
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  result_string = ''
  index = 0
  loop do
    if UPPERCASE.include?(string[index])
      result_string << string[index].downcase
    elsif LOWERCASE.include?(string[index])
      result_string << string[index].upcase
    else
      result_string << string[index]
    end
    index += 1
    break if index >= string.length
  end
  result_string
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
