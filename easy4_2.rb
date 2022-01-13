#PEDAC
# Problem
# Input: an integer that represents a year
# Output: a new string that begins with the century number
# and ends with the appropriate suffix
# Clarifying Questions
# really large numbers?
# from the use cases, largest number is 5 digits
# Zero?
# from the use cases, no zero input
# negative numbers?
# from the use cases, no negative numbers
# floats that represent parts of a year?
# from the use cases, none of that
# what constitutes a century?
# from the problem description, centuries begin in years that end with '01'
# i.e 1901-2000 represent the 20th century, 2001-2100 represent the 21st centure
# examples from test cases
# 0 - 100 = 1st century
# 101-200 = 2nd century
# 201 - 300 = 3rd century
# 301- 400 = 4th century
# what rules can we come up with from above
# - if the first digit is odd the century # is even and vise versa
# - new centuries begin in years that end with '01'
# - centuries end in years that end with '00'
# - century number is first digits + 1 (i.e '10'52 is the 11th century)
#   - you get to this place by dividing the year by 100
#   - example; 1052 / 100 = 10
#   - 5 / 100 = 0
#   - 10103 / 100
# some examples for when to use "st", "nd", "rd" or "th"
# '1st', '21st' '31st'
# '2nd' '102nd' '22nd'
# '3rd', '23rd'
# '20th', 11th, 12th, '113th'
# Data structure
# hash for suffix's
#
# Algo
# 1. define a method 'century' that takes an integer as an argument
# 1. if the integer ends in "0" then divide by 100 to get century_number
# 2.  otherwise divde the integer by 100 and then add 1 to get the
# variable century_number
# 3. to get the century_suffix
# - if the century ends in a '1' and is not a 'teen' the suffix is 'st'
# - if the century_ number ends in a '2' and is not a 'teen' the suffix is 'nd'
# - if the century_number ends in a '3' and is not a 'teen' the suffix is 'rd'
# - what is a 'teen'
# - the second to last character is "1" (i.e index -2)
# the second to last digit is a "1"
# 4. convert century_number to a string and concact century_number and suffix
# 5. return this new string

def century(year)
  if year.to_s.end_with?('0')
    century = (year/100).to_s
  else
    century = ((year / 100) + 1).to_s
  end
  if century.end_with?('1') && century[-2] != '1'
    suffix = 'st'
  elsif century.end_with?('2') && century[-2] != '1'
    suffix = 'nd'
  elsif century.end_with?('3') && century[-2] != '1'
    suffix = 'rd'
  else
    suffix = 'th'
  end
  result = century + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Launch Schools answer
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
