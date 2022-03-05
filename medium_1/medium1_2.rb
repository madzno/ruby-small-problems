=begin
Read Problem Outloud
Input: two integers
Output: one integer

Rules From Problem;
integer 1 represents the integer to be rotated
n represents the number of digits to be rotated
rotating just 1 digit results in the origional number being returned

Rules From Test Cases;
n represents the negative indice'd number that will be moved to the end
735291 n = 2, the -2 index number (9) is rotated to the end --> 735219
735291 n = 3, the -3 index number (2) is rotated to the end --> 735912

Any clarifying Questions?

Data Structure
an array

Algo

define a method rotate_rightmost_digits that takes two arguments
an integer to be rotated and an number that represents the number of times
to be rotated

assign a variable digits array to the result of calling the digits method on the
input1 integer and reverse this array

pass the digits array and num2 to the rotate array method, this time however
the rotated element will be equal to the return value of calling the delete_at method
at the -num2

then append the saved element to the end of the result array

assign result array to the return value of calling the rotate array method on the digits
array and num2

join the digits array and convert back to an integer

=end

def rotate_array(arr, num2)
  result_arr = []
  arr.each do |element|
    result_arr << element
  end
  rotated_element = result_arr.delete_at(-num2)
  result_arr << rotated_element
end

def rotate_rightmost_digits(num1, num2)
  digits_array = num1.digits.reverse
  result_array = rotate_array(digits_array, num2)
  result_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
