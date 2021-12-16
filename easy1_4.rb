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
