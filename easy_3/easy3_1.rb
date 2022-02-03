# input; 6 strings representing itegers
# output; an integer and an array of the 6 integers
# questions; validate? yes
# what types of numbers; natural numbers
# account for extra symbols, ect?; no
# 0? no
#alog
# 1. ask the user to enter a number
# 2. convert the user's string input to an integer
# 3. validate that the integer is a valid number
# 4. add each of the first 5 input'ed numbers to a data structure (array)
# 5. iterate through the array and see if the 6th number
# inputted appears in the array
# 6. if it does appear display that the number appears in the array to the user
# 7. if it does not appear display that the number does appear in the array to the user

def prompt(message)
  puts "==> #{message}"
end

def validate_number?(number)
  (number.to_i.to_s == number) && (number.to_i > 0)
end

def gets_number(round)
  number = ''
  loop do
    prompt("Enter number #{round}")
    number = gets.chomp
    break if validate_number?(number)
    prompt("Hmm... that doesn't look like a valid number")
  end
  number.to_i
end

def gets_five_numbers
  first_five_numbers = []
  round = 1
  loop do
    number = gets_number(round)
    first_five_numbers << number
    round += 1
    break if round > 5
  end
  first_five_numbers
end

def gets_last_number
  last_number = ''
  loop do
    prompt("Enter the last number: ")
    last_number = gets.chomp
    break if validate_number?(last_number)
    prompt("Hmmm... that doesn't look like a valid number")
  end
  last_number.to_i
end

first_five_numbers = gets_five_numbers
last_number = gets_last_number

if first_five_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{first_five_numbers}"
else
  puts "The number #{last_number} does not appear in #{first_five_numbers}"
