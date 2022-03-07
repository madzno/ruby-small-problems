=begin
Read problem outlout

Input: an array of integers
Ouptut: the average of the integers in the array

Rules from Problems/Test cases
numerator = sum of the numbers in the array
denominator = count of the items in the array

Data structure
array

Algo

define a method average that takes an array argument

initialize a numerator variable to the sum of the integers in the array

initialize a denominator variable to the count of elements in the input array

return the numerator divided by the denominator (the average)


=end

def average(arr)
  numerator = arr.sum
  denominator = arr.count
  numerator / denominator
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# FURTHER EXPLORATION

def average(arr)
  numerator = arr.sum
  denominator = arr.count
  (numerator.to_f / denominator.to_f).round(2)
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
