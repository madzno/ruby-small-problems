#1.upto(99) { |num| puts num if num.even? }

# number = 1
# while number <= 99
#   puts number if number.even?
#   number += 1
# end

# (1..99).each do |number|
#   puts number if number.even?
# end

a = []
1.upto(99) { |num| a << num }
evens = a.select { |num| num.even? }
puts evens
