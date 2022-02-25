=begin
Problem
Input: Two arrays
Output: a single one- dimensional array with both arrays combined

Explicit rules
- a new array is returned that contains the elements from the both
of the two input arrays
- if the two input arrays have overlapping elements, these elements should
not be duplicated in the result array
- output array is one dimensional

Data structure
Array

Algo
1. define a method merge with two parameters, arr1 and arr2
2. assign a variable result array to the result of concatinating arr1 and arr2 and
then making this result 'unique' in that it does not have duplicate elements
=end

def merge(arr1, arr2)
  result_arr = (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
