def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

def is_odd2?(number)
  number.remainder(2) != 0
end

puts is_odd2?(2)
puts is_odd2?(5)
puts is_odd2?(-17)
puts is_odd2?(-8)
puts is_odd2?(0)
puts is_odd2?(7)
