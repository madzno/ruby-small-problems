#PEDAC
# Problem
# Input; takes two strings as arguments
# Output; a new string- the result of shorter string + longer string
# + shorter string
#
# Explicit/Questions
# What type of characters?
# looks like alphaneumeric
# can we get an empty string>
# yes, one used in the use casses but does not have a space (a non
# alpha numeric character)
# can the strings be the same length?
# no, "you may assume that the strings are of different lengths"
#
# Data structure
# array's can be helpful with strings
#
# Algo
# 1. define a method short_long_short that takes two string parameters
# 2. initalize the parameter string_1 as the first provided string
# and string_2 as the second provided string
# 3. compare the lengths of the two strings
# 4. initalize and assign the variable longer_string to the longer string
# 5. initalize and assign the variable shorter_string to the shorter string
# 6. initalize and assign the variable result_string to the result
# of adding to gether short_string + long_string + short_string

def short_long_short(string_1, string_2)
  if string_1.length > string_2.length
    longer_string = string_1
    shorter_string = string_2
  else
    longer_string = string_2
    shorter_string = string_1
  end
  result_string = shorter_string + longer_string + shorter_string
end


short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
