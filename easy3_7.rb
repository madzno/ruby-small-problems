# input; an array
# output; an array with every element/elements at even
# indexes from the original array
# what about empty arrays? return an empty array
# what about arrays with just one element? - return just that element
# (element at index 0 always is returned)
# start with index 0 or 1 - from the sample problems 1
# data structure - an array
# algo
# 1. define a method 'oddities' that takes an array as a parameter
# 2. initalize a varaible called every_other and assign this variable
# to an empty array
# 3. through the parameter array by index starting at index 0
# 4. if an element's index is even, append the element at that index
# to the every_other array
# 5. return the every_other array

# def oddities(array)
#   every_other = []
#   array.each_with_index do |element, index|
#     every_other << element if index.even?
#   end
#   every_other
# end

# def oddities(array)
#   return [] if array.empty?
#   every_other = []
#   index = 0
#   loop do
#     every_other << array[index] if index % 2 == 0
#     index += 1
#     break if index >= array.size
#   end
#   every_other
# end

def oddities(array)
  every_other = []
  index = 0
  while index < array.length
    every_other << array[index] if index.even?
    index += 1
  end
  every_other
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


