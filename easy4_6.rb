=begin
# Problem
# input = an array
# output = an array
clarifying questions/explicit rules
- input array contains integers as elements
- output array contains integers as elements
- input array and output array have the same number of elements
- if given an empty array as input, output should be an empty array
-each element after the first element (at index 0) should be the sum of itself
plus the element proceeding
- Data structure; an array
- Algorithm
1. define a method 'running_total' that takes one parameter, an array
2. initalize a variable results_array to an empty array []
3. assign array[0] = results_array[0]
3. iterate through the parameter array by index starting at index = 1
4. for each element in array add that element to the previous index's element (index -1) and
append the result to the results_array
5. break out of the loop when index == array.length
5. return the results_array
=end

def running_total(array)
  return array if array.empty? || array.size == 1
  results_array = []
  results_array[0] = array[0]
  results_array[1] = (array[0] + array[1])
  index = 2
  loop do
    break if index == array.size
    results_array[index] = (results_array[index - 1] + array[index])
    index += 1
  end
  results_array
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
