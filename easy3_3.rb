#counting number of characters
# input; a sentence string
# output; an integer, the number of characters in string
# rules/clarifyingquestions
# what is considered a character?
# from the use cases and rules we see that it explicitly asks
# spaces not to be considered characters but does include characters
# such as "," and "'" as characters
# what about an empty string? I would assume an empty strings
# count would be a "0" but this is not used as a use case so
# i will not worry about it
# how do they want the count? They want the count as an integer/whole
# number
# Data structure; array
# Algo
# 1. ask the user for a word or multiple words
# 2. save the user's input as a string variable, sentence
# 3. remove the spaces from sentence
# 4. convert sentence into an array of each of its individual
# 5. string characters
# 6. set the length of the individual string characters to the character count
# 7. display the character count to the user

puts "Please write a word or mutliple words: "
sentence = gets.chomp

characters = sentence.chars
characters.delete(" ")

character_count = characters.length

puts "There are #{character_count} characters in #{sentence}."
