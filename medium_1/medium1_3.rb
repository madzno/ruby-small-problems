=begin
Read Problem Outloud
Input: an integer
Output: that integer maximum rotated

Rules from problem/test cases;
- will not have to handle multiple zeros
- what does maximum rotation mean?

735291
rotation 1, 7 rotates to the end 352917
index 0 to the end

rotation 2, 3 stays at index 0
5 rotates to the end
329175
index 1 to the end

rotation 3, 3 stays at index 0 and 2 stays at index 1
9 rotates to the end
321759
index 2 to the end

rotation 4, 3 stays at index 0, 2 at index 1, 1 at index 2
7 rotates to the end
index 3 to the end

rotation 5, 3 stays at index 0, 2 at index 1, 1 at index 2,
5 at index 3
9 rotates to the end
index 4 to the end

# of times you rotate = length of digit - 1


Any clarifying Questions?

Data Structure
an array

Algo
define a method max rotation that takes an integer as an argument

assign an array of the integers digits to the variable digits array

max rotation
assign a varaible index to 0
iterate through the digits array by index
assign the element at the current index to a variable
rotated element and delete that element from the digits array
append that element to the end of the digits array
stop iterating when index is equal to or greater than the
number of digits in the input digit

assign the result of max rotation to result array
join the result array and convert it to an integer

=end
def rotate_array(arr)
  index = 0
  loop do
    rotated_element = arr.delete_at(index)
    arr << rotated_element
    index += 1
    break if index >= arr.length
  end
  arr
end

def max_rotation(num)
  digits_array = num.digits.reverse
  result_array = rotate_array(digits_array)
  result_array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
