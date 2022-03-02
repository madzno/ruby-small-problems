def fizzbuzz(num1, num2)
  results = []
  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      results << 'FizzBuzz'
    elsif num % 3 == 0
      results << 'Fizz'
    elsif num % 5 == 0
      results << 'Buzz'
    else
      results << num
    end
  end
  puts results.join(', ')
end



fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
