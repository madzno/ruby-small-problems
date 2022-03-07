=begin
Read problem outlout

Input: a string
Ouptut: that string with words reversed if the word is greater than
5 characters in length

Rules from Problems/Test cases
if a word is < 5 characters it doesn't get reversed
spaces deliminate a word

Patterns from Test cases

Data Structure
array
string

Algo
define a method called reverse words that takes a string argument
split the string into words and assign this to words_array
initialize an empty array result_array
iterate through the words array and if a words length is greater than 5,
add the word reversed to the result_array otherwise add the word as is
join the results array and return it


=end

def reverse_words(string)
  words_array = string.split
  result_array = []
  words_array.each do |word|
    if word.length >= 5
      result_array << word.reverse
    else
      result_array << word
    end
  end
  result_array.join(' ')
end


p reverse_words('Professional') == 'lanoisseforP'
p reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
p reverse_words('Launch School') == 'hcnuaL loohcS'
