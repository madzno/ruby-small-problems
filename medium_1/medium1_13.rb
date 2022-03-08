=begin

Understanding maximum rotation

735291

first rotation 7 gets added to the end and 3 is now 'stuck in place'

352917

second rotation 5 gets added to the end and 32 is now 'stuck in place'

329175

Algo

define a method max rotation that takes an integer as an argument

pass the integer to 'rotate the right most digits' and assign the initial
value of n to the length of the integer

keep subtracting -1 from n so that it decreases in value with each rotation
until n is equal to -2

stop passing the array to rotate right most digits when n is equal to -2

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join
end

def max_rotation(number)
  n = number.to_s.length
  loop do
    break if n == 1
    number = rotate_rightmost_digits(number, n)
    n -= 1
  end
  number.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
