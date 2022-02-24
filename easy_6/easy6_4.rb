=begin
Read Problem Outloud

Input: An array
Output: That same array with the elements it contains in reverse order

Rules From Problem;
- must return the *same* array
- elements should be in reverse orders not the elements themselves reversed

Rules from Test Cases;
- if an empty string is given return the empty string
- if an array with one element is given return that element since there are no other
elements to reverse with
- the array can contain any objects, test examples have integers and strings

Clarifying Questions

Data Structure
An array

Algo
- define a method 'reverse!' that takes one parameter an array
- assign one index starting_index = 0
- assign one inde ending_index = -1
- assign the starting_index item to the ending index
- add 1 to the starting index and minus 1 to the ending index
- break when index < array.size /2


[1, 2, 3, 4]
[4, 2, 3, 1]
[4, 3, 2, 1]


=end

def reverse!(arr)
  starting_index = 0
  ending_index = -1
  while starting_index < arr.size / 2
    arr[starting_index], arr[ending_index] = arr[ending_index], arr[starting_index]
    starting_index += 1
    ending_index -= 1
  end
  p arr
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
