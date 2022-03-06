=begin
Read Problem Outloud
Input: two integers, first one represents the count
and the second one the mutliples
Output: an array of the specified number of multiples (count)
of the second number

Rules From Problem;
- if the count is 0 an empty array should be returned
- count represents the number of elements
- multiples can be any whole or negative number or 0


Data Structure
an array

Algo
define a method sequence that takes a counter integer and a
multiple integer

initialize an empty array variable result_array

return result_array if the counter integer is 0

append the mutliple integer to the result_array if counter
integer is anything but 0

initialize an index variable equal to 1

initialize a loop

append a element equal to the multiple integer plus the
integer minus 1 of the current index

add 1 to the index

break when the index is equal to or greater than the array's
size

=end

def sequence(count, multiple)
  return [] if count == 0

  result_array = [multiple]

  index = 1

  loop do
    result_array << multiple + result_array[index - 1]
    index += 1
    break if index >= count
  end

  result_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
