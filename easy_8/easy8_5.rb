def substrings(string)
  substrings = []
  (0..string.size - 1).each do |starting_index|
    (starting_index..string.size - 1).each do |ending_index|
      substrings << string[starting_index..ending_index]
    end
  end
  substrings
end

def palindromes(string)
  substrings = substrings(string)

  substrings.select do |sub_string|
    sub_string.length >= 2 && sub_string == sub_string.reverse
  end
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']


## FURTHER EXPLORATION

def substrings(string)
  alpha_string = string.delete("^a-z", "^A-Z")
  substrings = []

  (0..alpha_string.size - 1).each do |starting_index|
    (starting_index..alpha_string.size - 1).each do |ending_index|
      substrings << alpha_string[starting_index..ending_index]
    end
  end
  substrings
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  substrings = substrings(string)
  palindromes = []
  substrings.each do |sub_string|
    palindromes << sub_string if palindrome?(sub_string)
  end
  palindromes
end


p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
