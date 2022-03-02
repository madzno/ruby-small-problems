=begin
Read Problem Outloud
Input: user input
Output: a madlib (a string)

Rules From Problem;
ask user for a noun, a verb, an adverb and an adjective
and inject those into the output string

Rules From Test Cases;

Any clarifying Questions?

Data Structure
strings

Algo
ask the user to enter a noun and assign the users input to the variable noun
ask the user to enter a verb and assign the users input to the variable verb
ask the user to enter an adjective and assign the users input to the variable adjective
ask the user to enter an adverb and assign the users input to the variable adverb

output the string "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!""

=end

puts 'Enter a noun:'
noun = gets.chomp

puts 'Enter a verb:'
verb = gets.chomp

puts 'Enter an adjective'
adjective = gets.chomp

puts 'Enter an adverb'
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
