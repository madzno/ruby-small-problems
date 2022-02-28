=begin
Read Problem Outloud
Input: an array of integers
Output: a float representing those integers
multiplicative average rounded to three decimal points

Rules From Problem;
- multiply all integers together
- divide the result of this multiplication by the number of entries in the array
- round to 3 decimal points
- can only have one element in the array in which case you multiply by 1

Data Structure
an array

Algo
define a method show_multiplicative_average which takes an array of integers
as an argument
multiply each of the elements in the array by each other and divide this result
by the count of the number of elements in the array
round this result to three decimal points

=end

def show_multiplicative_average(arr)
  numerator = arr.reduce(:*).to_f
  denominator = arr.count.to_f
  format('%.3f', (numerator / denominator))
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
