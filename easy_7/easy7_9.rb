=begin
Read Problem Outloud
Input: two arrays each with a list of numbers
Output: a new array that contains the product of every pair of
numbers that can be formed between the elements of the two arrays
store results by increasing values

Rules From Problem;
- output array is sorted by increasing values
- output array contains all the possible combinations of the elements
in array1 and the elements in arr2

Rules From Test Cases;
neither argument is an empty array

Any clarifying Questions?

Data Structure
an array

Algo
define a method that takes two array's of integers as arguments
initialize an empty array result_array
multily the element at each index in the first array by the element
in each index in the second array by iterating through both arrays
and multiplying the num in array 1 by the num in array 2
add each of these products to result_array
sort the result array
=end

def multiply_all_pairs(arr1, arr2)
  result_arr = []
  arr1.each do |num1|
    arr2.each do |num2|
      result_arr << num1 * num2
    end
  end
  result_arr.sort
end

def multiply_all_pairs(arr1, arr2)
  result_array = arr1.product(arr2)
  result_array.map! do |sub_array|
    sub_array.reduce(:*)
  end
  result_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
