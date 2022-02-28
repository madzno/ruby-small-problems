=begin
Read Problem Outloud
Input: a string
Output: a new string with only alphaneumeric characters' cases
alternating

Rules From Problem;
ignores non alphabetic characters when determining
upper or lower case but still includes them in the final
string


Rules From Test Cases;
- non alphaneumeric characters will be included in the return value they
just wont count when toggling the desired character
- start with the first character capitalized
- non alphabetic characters include digits, spaces, punctuation

Algo
Initialize a constant LOWERCASE_ALPHABET = 'a'.. 'z'
Initialize a constant UPPERCASE_ALPHABET = 'A'.. 'Z'

define a method staggered_case that takes a string as its argument
initialize an empty array variable to result_array
initialize a tracker variable to the boolean true

iterate through the input string split into a character array,
if the tracker variable is true, upcase the character and add to result array
if the tracker is false, upcase the character and add to the result array

call the change_tracker method on the current tracker
if the character is included in a-z or A-Z, switch the tracker variable
if the character is not included in a-z or A-Z dont switch the tracker variable

Join the result_array into a string

=end

LOWERCASE_ALPHABET = ('a'..'z').to_a
UPPERCASE_ALPHABET = ('A'..'Z').to_a

def change_tracker(char, case_tracker)
  if LOWERCASE_ALPHABET.include?(char) || UPPERCASE_ALPHABET.include?(char)
    case_tracker = !case_tracker
  else
    case_tracker
  end
end

def staggered_case(string, alpha_only = true)
  result_array = []
  case_tracker = true
  string.chars.each do |char|
    if case_tracker
      result_array << char.upcase
    else
      result_array << char.downcase
    end
    if alpha_only
      case_tracker = change_tracker(char, case_tracker)
    else
      case_tracker = !case_tracker
    end
  end
  result_array.join
end

p staggered_case('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', false) #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'
