def stringy(integer)
  array_of_numbers = []
  index = 0
  until index == integer
    if index.even?
      array_of_numbers << "1"
    else
      array_of_numbers << "0"
    end
    index += 1
  end
  results = array_of_numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy2(size, default = 1)
  numbers = []

  if default == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  end

  if default == 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy2(6, 0)
puts stringy2(9)
puts stringy2(4, 1)
puts stringy2(7, 0)
