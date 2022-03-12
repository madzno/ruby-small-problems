=begin
Input = an integer
Ouptut = an integer that represents the 'next' featured number

Test cases/rules
- featured number is a number that is a multiple of 7
- is an odd number
- and digit only appears once

Data struture
integers
an array

Algo
define a method featured number that takes an integer as an argument

assign a counter variable to the input integer

assign a variable featured number to 0

initialize a loop
add 1 to the counter variable and assign this to num
if num is even, next
if num is odd, and divisible by 7
   - create an array of the numbers digits by converting it to a string and
     splitting the strings characters
     - iterate through the digits arr by index and if any index + 1 digit
      is equal to the curent digit, next
   - assign featured number to num and break out of loop

=end

def featured(integer)
  counter = integer

  loop do
    break if counter >= 9_876_543_210
    counter += 1

    next if counter.even? || counter % 7 != 0

    digits_arr = counter.digits.reverse

    next if digits_arr.any? { |digit| digits_arr.count(digit) > 1 }

    return counter
    break
  end

  'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)

