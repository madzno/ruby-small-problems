=begin
Input = a signed integer
ouptut= a string with sign

Examples
see below

Rules
1. Input integer can be 0, negative, or positive
2. 'sign' for integers refers to the sign that indicates a number is negative '-' or
no sign in front of then number indicating positive numbers or 0
3. 'sign' for strings refers to a '-' in front of the string indicating a negative number
or '+' indicating a positive number, 0 does not have a sign
4. input numbers are whole numbers and not floats

Data structure
An array to refer to the string digits

Algorithm
1. define a constant 'digits' array that contains corresponding digit strings in appropriate
index
2. define a method signed_integer_to_string with one parameter that represents an integer
3. initalize an empty string varaible called sign
4. If integer is negative multiply by -1 and append '-' to the sign variable
5. call the 'helper method' DIGITS to convert numbers to their string counterparts
  5a. define a helper method 'integer_to_string' that takes one parameter 'num'
  5b. initalize an empty string variable 'result'
  5b. initalize a loop
  5c. inside the loop, initalize two variables number, remainder that are equal to the result and
  remainder of dividing 'num' by 10
  5d. assign prepend the string at digits[remainder] onto the empty 'result' string
  5e. break out of loop when num is equal to 0
6. assign the return value of the helper method to a variable called result
8. if 'sign' variable is equal to '-' then prepend '-' to the beginning of result
6. if 'result' is equal to '0' return result
7. otherwise, prepent '+' to the beginning of result


=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  result = ''
  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end
  result
end

def signed_integer_to_string(integer)
  sign = ''
  if integer < 0
    integer *= -1
    sign << '-'
  end
  result = integer_to_string(integer)
  if sign == '-'
    result.prepend(sign)
  elsif result == '0'
    result
  else
    result.prepend('+')
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

