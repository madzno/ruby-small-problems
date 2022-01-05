# write a program that prompts the user
# for two positive integer and then prints the results
# of the following operations on those numbers: addition,
# subtraction, product, quotient, remainder, and power
# do not worry about validating input

def prompt(message)
  puts "==>#{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt("Enter the second number")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")

#second number as 0 - would need a validate_number method that
# validates second_number is not zero
# if we wanted to use floats instead of integers would need to convert
# input to floats by .to_f and round our decimal points to 2
# another edge case - negative numbers? changes whetehr validate_number is
# != 0 or > 0.
