# Input; two strings, one representing user's current age
# and one representing user's desired retirement age
# Output; Integer representing year when user will retire
# integer representing how many years she has to work until retirement
# Algo
# 1. ask user for current age, convert to integer, and set as variable current_age
# 2. ask user for retirement age, convert to integer, and set as variable retirement_age
# 3. subtract current_age from retirement_age and set this to years_until_retirment
# 4. add years_until_retirement to constant CURRENT YEAR (2021) and set this to retirment_year
# 5. Output retirement_year and years_til_retirement to user

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_until_retirement = retirement_age - current_age
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retirement} years of work to go!"
