def fizzbuzz_value(num)
  if num % 3 == 0 && num % 5 == 0
    num = 'FizzBuzz'
  elsif num % 3 == 0
    num = 'Fizz'
  elsif num % 5 == 0
    num = 'Buzz'
  else
    num
  end
end

def fizzbuzz(num1, num2)
  results = []
  (num1..num2).each do |num|
    results << fizzbuzz_value(num)
  end
  puts results.join(', ')
end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
