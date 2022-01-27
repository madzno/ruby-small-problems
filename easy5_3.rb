=begin
Problem
Input; a string representing the time of day in 24 hr format
Output; a number from 0 to 1439 representing the time as minutes
in the day

Examples
See below

Rules
1. input is a string where the first number represents the
hour and the second represents the minutes
2. 24 hours in a day, 60 minutes in an hour, 1440 minutes in a day
3. Looks like output is not a negative number, only a positive
integer from 0 - 1439
4. 00:00 or 24:00 represent 0 in both methods
5. TWO methods, one that represents the time after midnight and
one that represents the time before midinght

Data Structure

Algo - after midnight
1. Define a method after_midnight with on parameter string
2. split the string by the symbol ':' and initalize to a variable
hours_and_minutes
3. transform each element in the hours_and_minutes array to an integer
4. assign the integer at hours_and_minutes index 0 to hours and integer
at hours_and_minutes index 1 to minutes
3. if hours = 24 or 0, return 0
4. multiply the hours by 60 to get the hours in minutes
5. add the second half 'minutes' to get the final output integer
6. return that integer

Algo - before midnight
1. define a method after_midnight with one parameter 'string'
2. pass the input string to the helper method after_midnight and
assign the result to after_midnight_hours
3. subtract after_midnight_hours from before midnight hours
to get your before midnight result

Algo - before midnight
=end

def after_midnight(string)
  return 0 if string.start_with?('24')
  hours_and_minutes = string.split(':').map(&:to_i)
  hours = hours_and_minutes[0]
  minutes = hours_and_minutes[1]
  result = (hours * 60) + minutes
end

def before_midnight(string)
  return 0 if string.start_with?('24') || string.start_with?('0')
  after_midnight_minutes = after_midnight(string)
  result = 1440 - after_midnight_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
