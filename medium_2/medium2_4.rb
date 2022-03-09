=begin
Input = a string
Output = a boolean, true or false

Rules

Return true if parentheses are 'properly balanced'
What does it mean to be properly balanced?
When a '(' appears first in the string a certain number of times
and then ')' appears the same number of times

Edge cases
- must start with '(' as the starting parentheses type
in order for it to be balanced, why 23 is not balanced

- if there are no parentehses '(' or ')' the string is considered balanced
and returns treu

What (is) this?
     false true

What ((is)) up(''
false true false true false



Data structure
string
array

Algorithm

define a tracker to keep track of how many '()' pairs there are

initialize the tracker to 0

iterate through the input string by character
for every '(' there is add 1 to the tracker and for every ')' subtract 1

return true if tracker is == 0

return false otherwise

=end

def balanced?(string)
  tracker = 0
  string.each_char do |char|
    if char == '('
      tracker += 1
    elsif char == ')'
      tracker -= 1
    end
    break if tracker < 0
  end
  return true if tracker == 0
  false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
