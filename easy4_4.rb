# Problem
# Input = any integer greater than 0
# Output = a boolean true if the year is a leap year or a boolean false if it is not
# Examples/Clarifying Questions
# can the input be 0? No. can the input be negative? no
# very long numbers? Yes. lets see how ruby handles this
# Rules of a leap year after year 1752;
# 1) Year must be divisble by 4
# 2) Year cannot be divisble by 100
# 3) If year is divisible by 100 BUT divisible by 400 it is a leap year
# Data Structure
# Algorithm
# define a method leap_year? that takes one argument, an integer
# if year after 1752 call previous leap year method
#        if the year is divisible by 400 == leap year (true)
#         if the year is divisible by 4 AND not divisible by 100 then is a leap year (true)
# else if the year is before 1752 and it is divisible by 4,  it is a leap year
# return the result of this conditional

def g_leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 !=0)
end

def leap_year?(year)
  if year > 1752
    g_leap_year?(year)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
