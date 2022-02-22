=begin
Read Problem Outloud

Input: A float or integer
Output: A string representing the angle in degrees, minutes, and seconds

rules/questions (from problem and test cases);
- degree symbol after the degree number, a single quote ' after the minutes
, a double quote after the seconds "
- should use two digit numbers with leading zeros when formating the minutes
and seconds
 Examples from test cases:
  - 00 = 0 seconds
  - 02 = 2 seconds
  - 05 = 5 seconds
- entire number should be in %()
- input can be a whole number or float with any number of decimal points
- 360 can be represented as 360/00/00 OR 0/00/00
- 0 is represented as 0/00/00
- Break down the other test cases;

- Input 76.73
- degree = input.to_i = 76
- minutes_with_seconds = ((input % input.to_i) * 60).round(2) = 43.8
- minutes = minutes_with_seconds.to_i = 43
- seconds = ((minutes_with_seconds % minutes) * 60).round(2).to_i = 48
- Output 76/43/48

- Input 254.6
- degree = input.to_i = 254
- minutes_with_seconds = ((input % input.to_i) * 60).round(2) = 36.00
- minutes = minutes_with_seconds.to_i = 36
- seconds = ((minutes_with_seconds % minutes) * 60).round(2).to_i = 0
- seconds = 0
- output 254/36/00

- Input 30
- degree = input.to_i = 30
- minutes_with_seconds = ((input % input.to_i) * 60).round(2) = 0
- minutes = minutes_with_seconds.to_i = 0
- if minutes == 0, seconds = 0, else examples above
- output 30/00/00

- Input 0
- degree = input.to_i = 0
- if degree == 0, minutes = 0, else do above
- if minutes == 0, seconds = 0, else do above
- ouptut 0/00/00

Examples/Test Cases
see below

Data Structure
A string

Algo
- define a constant DEGRE = "|xC2\xB0"
- define a constant DEGREES_TO_MINUTES = 60
- define a constant MINUTES_TO_SECONDS = 60
- define a method 'dms' with one parameter, a float
- set a variable 'degrees' as input float converted to an integer
- initialize a variable minutes_to_seconds equal to the return value of calling a method
'get_minutes' with integer and degrees passed as an argument
  - define a helper method get_minutes with one parameter integer
  - if degree == 0, minutes = 0
  - else
    - minutes_with_seconds = ((input % degrees) * 60 ).round(2)
- set a variable minutes equal to minutes_to_seconds.to_i
- initialize a variable seconds equal to the return value of calling a method 'get_seconds'
with minutes_with_seconds and minutes passed as arguments
  - if minutes == 0, seconds = 0
  - else
    - seconds = ((minutes_with_seconds % minutes) * 60).round(2).to_i
- reasign minutes to format minutes to two degree places string
- reasign seconds to format seconds to twoo degree places string
- reasign degrees to integer converted to a string
- output a string that is equal to '%(#{degrees}{DEGREE}{minutes}'{seconds}")' and return this string
=end

DEGREE = "\xC2\xB0"
DEGREES_TO_MINUTES = 60
MINUTES_TO_SECONDS = 60

def get_minutes(integer, degrees)
  if degrees == 0
    minutes_with_seconds = 0
  else
    minutes_with_seconds = ((integer % degrees) * DEGREES_TO_MINUTES).round(2)
  end
end

def get_seconds(minutes_with_seconds, minutes)
  if minutes == 0
    seconds = 0
  else
    seconds = ((minutes_with_seconds % minutes) * MINUTES_TO_SECONDS).round(2).to_i
  end
end

def dms(integer)
  degrees = integer.to_i
  minutes_with_seconds = get_minutes(integer, degrees)
  minutes = minutes_with_seconds.to_i
  seconds = get_seconds(minutes_with_seconds, minutes)
  %(#{degrees}#{DEGREE}#{format('%.2d', minutes)}'#{format('%.2d', seconds)}")
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
