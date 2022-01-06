#input; a string
#output; a boolean
# clarifying questions/explicit questions
# what is a palindrome? A palindrome is a string that reads
# the same way forward as it does backwards
# what about an empty string? Not given in the use cases
# what about characters? characters can be alphanumeric, symbols
# spaces - and all characters matter
# what about capitalization? capitalization matters
# output is either boolean true or boolean false
# data structure - array
# algo
# 1. define a method called 'palindrome?'
# 2. initalize the method's parameter 'string' which represents a
# string argument passed into the method
# 3. compare the string to itself reversed and see if the two are equal
# 4. return the value of this comparison

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

