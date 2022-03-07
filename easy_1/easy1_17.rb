=begin
Read problem outlout

Input: an integer
Ouptut: a string of digits

Rules from problems/testcases

input integer should equal the length of the result string
always start with '1'

Patterns from Test cases

Data Structure
string

Algo
define a method stringy that takes an integer as an argument

initialize a varable result string to an empty string

initalize a variable counter = 0

while the counter is less than than the input integer
add '1' to the string if counter is even
add '0' to the string if counter is odd
add 1 to the counter

return the result string


=end

def stringy(integer)
  result_string = ''
  counter = 0
  while counter < integer
    if counter.even?
      result_string << '1'
    else
      result_string << '0'
    end
    counter += 1
  end
  result_string
end

p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'

## FURTHER EXPLORATION

def one_first_stringy(integer)
  result_string = ''
  counter = 0
  while counter < integer
    if counter.even?
      result_string << '1'
    else
      result_string << '0'
    end
    counter += 1
  end
  result_string
end

def zero_first_stringy(integer)
  result_string = ''
  counter = 0
  while counter < integer
    if counter.even?
      result_string << '0'
    else
      result_string << '1'
    end
    counter += 1
  end
  result_string
end

def stringy(integer, first = '1')
  if first == '1'
    result_string = one_first_stringy(integer)
  else
    result_string = zero_first_stringy(integer)
  end
end

p stringy(6, '1') == '101010'
p stringy(9, '0') == '010101010'
p stringy(4, '0') == '0101'
p stringy(7) == '1010101'
