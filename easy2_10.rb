array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# line 1 - variable array1 is assigned to an array of strings
# [ "Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]
# line 2 - variable array2 is assigned to an empty array
# line 3 - .each method is called and iterates through the array1 array
# the block that is passed to each is that each element in the array1
# array is added to the array2 array, destructively (<<)
# the origional array1 is returned
# line 4- .each method is called and iterates through the array1 array
# the block that is passed to each calls the .upcase! method (which is
# destructive and modifies in place) those elements that start with "C" or
# "S" characters- the names "Curly", "Shemp", "Chico" evaluate to true
# with this if conditional and thus are modified in place to CURLY SHEMP CHICO
# 5 each element of the array2 is outputted on its own line with the .puts
# method- Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo
# since each element in array1 is referencing the same string element in
# array2, .upcase! effects Curly, Shemp, and Chico in both arrays
