=begin
Read Problem Outloud

Input: An array
Output: A new array with the elements in reversed order

Rules From Problem;
- must return a *new* array
- elements should be in reverse orders not the elements themselves reversed

Rules from Test Cases;
- if an empty array is given return the empty array
- if an array with one element is given return that element since there are no other
elements to reverse with
- the array can contain any objects, test examples have integers and strings

Clarifying Questions

Data Structure
An array

Algo
- define a method reverse with one parameter an array
- initialize a variable result_array to an empty array []
- initialize a variable index = 0
- initialize a varaible last_element to the last element of the input array popped off
- append that element to the result_array
- prepend that element back to the input arr
- add 1 to index
- stop iterating when index is greater than or equal to the input array's length - 1
=end

def reverse(arr)
  result_arr = []
  arr.each do |element|
    result_arr.prepend(element)
  end
  result_arr
end

=begin

Algo 'each_with_object'
- input array will be the element called on each with object and argument will
be an empty array
- (element, array)
- for each element in the array, prepend it to the beinning of the result array (reverse order)
- return the new array
=end

# def reverse(arr)
#   arr.each_with_object([]) do |element, array|
#     array.prepend(element)
#   end
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
