# input; string
# output; boolean- true or false
# explicit rules
# empty string? not in test cases
# non alphanumeric characters? ignore them- only alphanumerics matter
# case insensitive- case doesn't matter
# data structure - string or array
# algo
# 1. define a method real_palindrome? that takes a string parameter
# 2. make the string case insensitive by converting all characters to lowercase
# 3. remove all spaces from the string
# 4. Initialize a variable characters and set it equal to an array of
# all the characters in string
# 5. Destructively remove any characters that are not alphanumeric (meaning
# characters that are not a through z or digits 0 to 9)
# 6. convert theh modified array (characters removed) back to a string
# 7. call the palindrome? method on that string
# 8. return the results of palindrome?

def palindrome?(string)
   string.reverse == string
end

def real_palindrome?(string)
  lowercase_string = string.downcase
  characters = lowercase_string.chars
  characters.keep_if do |letter|
    ('a'..'z').cover?(letter) || ('0'..'9').cover?(letter)
  end
  result_string = characters.join
  palindrome?(result_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
