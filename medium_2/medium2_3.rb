=begin

Input = a string
Ouptut = a hash with the percentage of letters in the input string
that are lowercase, percentage of letters that are uppercase, and
percentage of characters that are non alphabetic

Rule
- hash keys will be :lowercase, :uppercase, :neither
- values will be the percentage of numbers of each category
- will not get an empty string as input

What does percentage mean?
'abCdef 123'

lower case = 5.0 / (total characters) * 100 = 50.0
upper case = 1.0 / 10.0 * 100 = 10.0
other = 4.0 / 10.0 * 100 = 40.0

'AbCd +Ef'
lower case = 3
upper case = 3
other = 2
total char = 8

'123'
lower case = 0
upper case = 0
other = 3.0

Data structure
hash
array

Algo


initialize the letter percents hash with the keys :lowercase, :uppercase, and :neither
and the value 0

iterate through the string by characters and count the number of characters that
are between 'a-z' assign this to a variable downcase count

convert downcase count to a float
divide it by the count of total characters in the input string
(can only do this by converting to an array first) as a float
mutliply the result  by 100 to get the downcase percentage
assign this return value to a varaible downcase percentage
assign the value of downcase percentage to the :lowercase key in the letter_counter hash

iterate through the string by characters and count the number of characters that are between
'A-Z' and assign this to a varaible upcase count

convert upcase count to a float
divide it by the count of the total characters in the input string
mutliply it by 100
assign the return value to upcase percentage
assign the value of upcase percentage to the :uppercase key in the letter_counter hash

iterate throught he string by characters and count the number of characters that are not
between `a-z` or `A-Z` and assign this to a variable neither count

same as above

return the letter_percents hash
=end

def initialize_percent_hash
  { lowercase: 0, uppercase: 0, neither: 0}
end

def calculate_percent(string, count)
  percentage = (count.to_f / string.length) * 100
end

def letter_percentages(string)
  letter_percents = initialize_percent_hash

  lowercase_count = string.count('a-z')
  uppercase_count = string.count('A-Z')
  neither_count = string.count('^a-z', '^A-Z')

  letter_percents[:lowercase] = calculate_percent(string, lowercase_count)
  letter_percents[:uppercase] = calculate_percent(string, uppercase_count)
  letter_percents[:neither] = calculate_percent(string, neither_count)

  letter_percents
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
