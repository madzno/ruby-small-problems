=begin
Read Problem Outloud
Input: an array of elements
Output: a hash with the key as the element and the value
as the element counts in the array

Rules From Problem;
words are case sensitive

Rules From Test Cases;

Any clarifying Questions?

Data Structure
an array
a hash

Algo
define a method count_occurences that takes an array as an argument

initialize an empty array counts_array

iterate through the array and assign each item as a key in the counts_array
with 0 as its value

iterate through the vehicles array and if the current item matches a key in
the counts hash, add 1 to that key's value

return the counts hash

=end

def count_occurrences(arr)
  counts_hash = {}
  arr.each do |string|
    counts_hash[string] = arr.count(string)
  end
  counts_hash.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)


