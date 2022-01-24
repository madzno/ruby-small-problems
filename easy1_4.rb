def count_occurrences(array)
  element_counts = {}
  array.each do |element|
    if element_counts.has_key?(element)
      element_counts[element] += 1
    else
      element_counts[element] = 1
    end
  end
  element_counts.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

#1. set input array as method parameter
#3. convert all elements to downcase
#4. set element_counts = {} empty hash
#5. for each element in the array
#6. if the element is not a key in element_counts hash add it as a key and 1 as its count
#7. if the element is a key in element_counts hash add 1 to the value associate with that key
#8. puts the elements hash to the screen

=begin
Problem
Input = an array
Output = a hash with each element in the array as it's key
and the count of each element as the value

Example
car => 4
truck => 3
SUV => 1
motorcycle => 2

Data Structure
Array
Hash

Algo
1. define a method count_occurances that takes one parameter, a hash of strings
2. initalize a local variable hsh to an empty hash {}
3. loop through the vehicles array and add each item as a key and each value
as the integer 0
4. count the iterations by index
5. add one to the index on each iteration
6. break out of loop when index >= vehicles array length
7. call a helper method called 'count_items'
8. pass the hsh to count_items and the vehicles array
9. loop through the vehicles array and if the current item matches a key
in the hsh then add 1 to the hsh value
10. return the hash with counts now added
11. set the result_hash equal to the return value of the count_items array
12. return that result_hash
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def vehicle_counts(vehicles)
  hsh = {}
  each_vehicle = vehicles.uniq
  each_vehicle.each do |string|
    hsh[string] = 0
  end
  result_hash = count_occurrences(hsh, vehicles)
  p result_hash
end

def count_occurrences(hsh, arr)
  arr.each do |string|
    hsh[string] += 1 if hsh.key?(string)
  end
  hsh
end

vehicle_counts(vehicles)


