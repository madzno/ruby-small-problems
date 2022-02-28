=begin
Input: Two arrays
Output: a new array that cantains all elements
from both array arguments with the elements taken in alteration

Rules From Problem;
- should return a new array
- input arrays will be non-empty and contain the
same number of elements
- elements should be alternating

Rules From Test Cases;
- first element from first array starts alteration

Any clarifying Questions?

Data Structure
an array

Algo
define a method interleave with two parameters arr1 and arr2
initialize a variable result_arr equal to an empty array
initialize a variable index equal to 0
append the element at index 0 of the arr1 to the result
array then the element at index 0 of arr2 and so forth
add 1 to index
stop iterating when index is greater or equal to the length
of arr1 minus 1
return result arr
=end

def interleave(arr1, arr2)
  result_arr = []
  index = 0
  loop do
    result_arr << arr1[index] << arr2[index]
    index += 1
    break if index > arr1.length - 1
  end
  result_arr
end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
