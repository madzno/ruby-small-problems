def prompt(words)
  puts ">> #{words}"
end

def validate_number?(number)
  (number.to_i.to_s == number) && (number.to_i > 0)
end

def validate_operator?(input)
  input == 's' || input == 'p'
end

def get_limit(num)
  loop do
    prompt("Please enter an integer greater than 0:")
    num = gets.chomp
    break if validate_number?(num)
    prompt("Hmmm... that doesn't look like a valid number")
  end
  num.to_i
end

def get_operator(letter)
  loop do
    prompt("Enter 's' to compute the sum, 'p' to compute the product")
    letter = gets.chomp
    break if validate_operator?(letter)
    prompt("Hmm... that doesn't look like a valid response")
  end
  letter
end

def get_result(limit, operator)
  if operator == 's'
    (1..limit).inject(:+)
  else
    (1..limit).inject(:*)
  end
end

def display_result(operator, result, limit)
  if operator == 's'
    puts "The sum of the integers between 1 and #{limit} is #{result}"
  else
    puts "The product of the integers between 1 and #{limit} is #{result}"
  end
end

limit = get_limit(limit)
operator = get_operator(operator)
result = get_result(limit, operator)
display_result(operator, result, limit)
