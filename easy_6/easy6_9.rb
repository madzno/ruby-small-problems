=begin
Read Problem Outloud
Input: an array and a search element
Output: a boolean true or false

Rules From Problem;
- may not use array#include
- search the array and if any of the elements match
the search element then return true or false

Rules From Test Cases;
- array can be an empty array
- search element can be any type of element
- array can have any type of elements

Any clarifying Questions?

Data Structure
Array

Algo
- define a method include with two parameters, an array and a search element
- iterate through the array and keep any items that match the search element
- if the input array is empty, return false else return true
=end

def include?(arr, search_element)
  arr.keep_if do |element|
    element == search_element
  end
  !arr.empty?
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
