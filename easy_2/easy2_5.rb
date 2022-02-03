# input; string of users name or string of users name + "!"
# output; string greeting in downcase if no "!" used and upcase if "!" is used
# algo
# 1. Ask the user what their name is
# 2. set name variable to users input
# 3. if name variable includes a "!" symbol then output an upcase greeting
# 3a. remove the "!" from the user's input when outputting the name
# 4. if name variable does't include a "!" symbol then output a lowcase greeting

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chomp('!').upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

