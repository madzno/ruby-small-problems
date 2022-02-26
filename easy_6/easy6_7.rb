=begin
Read Problem Outloud

Input: a one dimensional array
Output: a multidimensional array containing the elements of the input array
split in half

Rules From Problem;
- if input array has an odd number of elements, the first array should
contain the greater number of elements
- output should be a pair of nested arrays
- order of elements matters

Rules from Test Cases;
- if input is a empty array output should be two nested empty arrays

Clarifying Questions

Data Structure
array

Algo
-define a method halvsies with one parameter an array
-initialize an array arr_1 to an empty array
- initilaize an array arr_2 to an empty array
- initialize result array = [arr_1, arr_2]
- if input array is empty return result array as is

- if the length of the input array is even,
while the index is less than the length of the array / 2
add those elements to the first array
while the index is equal to greater than or equal to the length of the array / 2
add those elements to the second array

- if the length of the input array is odd
while the index is less than or equal to the length of the array / 2
add those elements to the first array
while the index is equal to greater than the length of the array / 2
add those elements to the second array
=end

def halvsies(arr)
  arr1 = []
  arr2 = []

  if arr.length.even?
    arr.each_with_index do |element, index|
      if index < arr.length / 2
        arr1 << element
      else
        arr2 << element
      end
    end
  else
    arr.each_with_index do |element, index|
      if index <= arr.length / 2
        arr1 << element
      else
        arr2 << element
      end
    end
  end

  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
