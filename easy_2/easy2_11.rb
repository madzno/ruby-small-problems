age = rand(20..200)

age = (20..200).to_a.sample

puts "Teddy is #{age} years old!"

# Further Exploration

puts 'Please enter a name:'
name = gets.chomp

name = 'Teddy' if name == ''

age = rand(20..200)

puts "#{name} is #{age} years old!"

