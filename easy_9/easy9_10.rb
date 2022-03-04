=begin
Read Problem Outloud
Input: a multidiminesional array with sub arrays
that contain a string of a fruit name and an integer
representing the number of times that fruit will appear
Output: a one diminesional array with the input array
fruit strings

Any clarifying Questions?

Data Structure
array

Algo
define a method buy_fruit that takes a multidimensional array as input

initialize an empty array variable called result_array

iterate through the multidiminesional array and append the fruit string
at index 0 of each sub array the number of times as the integer at index 1

return the result array

=end

def buy_fruit(arr)
  result_arr = []
  arr.each do |sub_array|
    sub_array[1].times do
      result_arr << sub_array[0]
    end
  end
  result_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
