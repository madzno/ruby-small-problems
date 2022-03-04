=begin
Algo
define a method 'greetings' that takes two arguments an array and a hash
initialize a variable 'name' to the array's elements joined into a string
with spaces in between each element
output the string
"Hello, #{name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."

=end

def greetings(arr, hsh)
  name = arr.join(' ')
  title = hsh[:title]
  occupation = hsh[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
