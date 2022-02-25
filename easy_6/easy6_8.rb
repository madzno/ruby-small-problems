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
- iterate through the input array by index and see if the current
element matches any of the other elements in the array

[1, 5, 3, 1]
index 0 element match index 1, 2, 3
index 1 element match index 0, 2, 3
index 2 element match index 0, 1, 3
index 3 element match index 0, 1, 2

=end
