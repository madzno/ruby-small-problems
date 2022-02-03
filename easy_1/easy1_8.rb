def average(array)
  index = 0
  sum = 0
  while index < array.length
    number = array[index]
    sum += number
    index += 1
  end
  average = ((sum.to_f) / (array.length.to_f))
  format("%.2f", average)
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
