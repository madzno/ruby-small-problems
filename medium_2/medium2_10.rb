=begin
Input= an integer 'n'
Ouptut = an integer that represents the difference
between the square of the sum of the first n positive integers
and the sum of the squares of the first 'n' positive integers

Test Cases
Square of the sum of the first n positive integers
- positive integers start at 1 and increment by 1
3
sum of the first n integers is 1 + 2 + 3 and then you square
**2 that sum = 36

sum of the squares of the first n integers
1 ** 2 = 1
2 ** 2 = 4
3 ** 2 = 9
14

36-14 = 22

sum of the first n integers 10
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 = 3025

n is included in the numbers that are summed/squared

Data structure
array
range

Algorithm

initialize an array of integers from 1 to n (inclusive) called num_arr

sum up the elements in num_arr and square them, assign this integer to
square of sums

initailze a new array squares_arr
iterate through the num_arr and square each integer, add the result to the
squares_arr

sum up the integers in the squares_arr and assign this to sum of squares

subtract the sum of squares from the square of sums

=end

def get_sum_of_squares(arr)
  squares_arr = []
  arr.each { |num| squares_arr << num ** 2 }
  squares_arr.sum
end

def sum_square_difference(num)
  num_arr = (1..num).to_a

  square_of_sums = (num_arr.sum) ** 2

  sum_of_squares = get_sum_of_squares(num_arr)

  square_of_sums - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
