=begin
Read Problem Outloud
Input: an unordered array with exactly one duplicate
Output: the value of that duplicate

Rules From Problem;
- exactly one value in the array occurs twice (every other value occurs
exactly once)

Rules From Test Cases;
- array's contian integers it seems and can be of any length

Any clarifying Questions?

Data Structure
Array

Algo
- define a method find_dup with one parameter, an array
- initialize an array called dup_element to an empty array
- iterate through the array and if the count of the current element
is equal to 2 then add that element to the dup_element array
- return the element at index 0 of the dup_element array

=end

def find_dup(arr)
  dup_element = []
  arr.each do |num|
    dup_element << num if arr.count(num) == 2
  end
  dup_element[0]
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
