=begin
Read problem outlout

Input: an integer
Ouptut: an integer (the sum of the digits)

Rules from Problems/Test cases
- split the input integer into


Patterns from Test cases

Data Structure


Algo


=end

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
