#input = a positive integer
# output = a string of alternating 1's and 0's which length
# is = to string
# rules
# the length of the string should = the integer given as an argument
# the string always starts with 1
# data structure - order matters so its possible an array will help us
# algo
# 1. set integer = methods parameter
# 2. create a variable called string = to an empty string
# 3. set a "counter" set to 0
# 4. until strings length is == integer add "1" to string on even counters
# and add 1 on odd counters
# return the string

def stringy(integer)
  string = ''
  starting_index = 0
until string.length == integer
  if starting_index % 2 == 0
    string << "1"
  else
    string << "0"
  end
  starting_index += 1
end
 string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
