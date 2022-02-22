=begin
Read Problem Outloud

Input: integer (the number of digits of the fibonacci number)
Output: integer (the index of the first fibonacci number that has that number of digits)

Rules From Problem;
- What is the Fibonacci series?
 - A series of numbers, starting with 1 and 1 as the first two numbers and each subsequent
 number is the sum of the two previous numbers
 example; 1, 1, 2, 3, 5, 8, 13, 21...
 - number will alwasy be greater or equal to 2
 - first fibonacci number has index 1

Rules from Test Cases;
- Index Starts at 1,
input 3 (i.e first 3 digit number (100 - 1000))
1 1 2 3 5 8 13 21 34 55 89 144
1 2 3 4 5 6  7  8  9 10 11 12
ouptu 12 because the first 3 digit number is 144 and is at index 144

Clarifying Questions


Data Structure - Array

Algo
- define a method find_fibonacci_index_by_length with one parameter an integer
- initiate an array equal to the fibonacci sequence but the numbers as strings
   - initialize an empty array
   - index 0 and index 1 of the empty array are equal to '1'
   - for index 2 on, number is equal to index - 1 as an integer + index - 2 as an integer
   - stop adding to the array when current string.length is = input integer
- return the length of the fibonacci array
=end

def find_fibonacci_index_by_length(integer)
  fibonacci_strings = ['1', '1']
  index = 2
  loop do
    number = (fibonacci_strings[index - 1]).to_i + (fibonacci_strings[index - 2].to_i)
    fibonacci_strings << number.to_s
    index += 1
    break if number.to_s.length >= integer
  end
  fibonacci_strings.length
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
