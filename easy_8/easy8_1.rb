=begin
Read Problem Outloud
Input: an array of integers
Output: an integer that represents the sum of sums of
each leading subsequnence for that array

Rules From Problem;
- array will contain at least one number

Rules From Test Cases;
- all numbers are positive
- no numbers are 0
- all numbers are integers and not floats

Any clarifying Questions?
- what is a leading subsequence?
[3, 5, 2]
(3) a[0]
(3 + 5) a[0] + a[1]
(3 + 5 + 2) a[0] + a[2] + a[3]
and add all of those together to get result

Data Structure
An array (multidimensional?)

Algo
define a method sum_of_sums that takes an array argument

initialize an empty array variable called subsequences

iterate through the array by index and produce a new multidimensional
array that contains each leading subsequence as sub_arrays
[[a[0]], [a[0] + a[1]], [a[0] + a[1] + a[2]]
starting_index = 0
ending_index = starting index until array length - 1
sub_array = [arr[starting_index..ending_index]
subsequences << sub_array

transform the multidimensional array into an array of the sums of each of
the sub arrays and assign the return one-dimensional array to the variable
sums

sum the numbers in the sums array

return the sum

=end

def get_subsequences(arr)
   subsequences = []
   starting_index = 0
  (0..arr.size - 1).each do |ending_index|
    subsequences << arr[starting_index..ending_index]
  end
  subsequences
end

def sum_of_sums(arr)
  subsequences = get_subsequences(arr)

  subsequences.map! do |sub_array|
    sub_array.reduce(:+)
  end

  subsequences.sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
