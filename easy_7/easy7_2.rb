=begin
Read Problem Outloud

Input: A string
Output: A hash

Rules From Problem;
- String can create any type of character
- Output should be a hash with symbol keys and integer vaules
- keys represent lower case alphaneumeric letters, upper case alphaneumeric letters,
and other characters that are not alphaneumeric


Rules From Test Cases;
- input can be an empty string, in which case all counts are 0
- spaces, digits, other types of symbols are all considered characters

Any clarifying Questions?

Data Structure Hash

Algo
- initialize a hash with keys set as :lowercase, :uppercase, :neither and values
as 0
- iterate through the input strin by character, if the character is included
in a - z add 1 to the lowercase key
- if the character is included in the A-Z add 1 to the uppercase key
- otherwise add to the neither key

=end

def letter_case_count(string)
  result_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      result_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      result_hash[:uppercase] += 1
    else
      result_hash[:neither] += 1
    end
  end
  result_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
