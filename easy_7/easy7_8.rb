=begin
Read Problem Outloud
Input: two arrays of integers
Output: a single array that contains the product of each
pair of numbers from the arguments that have the same index

Rules
arguments will contain the same number of elements
product = elements multiplied by eachother
whole integers

Data Structure
an array

Algo
define a method multiply_list that takes two arrays as arguments
initialize a product array to an empty array
iterate through arr1 by index and multiply the current num in arr1
by the element at index 0 in arr2, add this result to the product array
return the product array
=end

def multiply_list(arr1, arr2)
  product_arr = []
  arr1.each_with_index do |num, index|
    product_arr << (num * arr2[index])
  end
  product_arr
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
