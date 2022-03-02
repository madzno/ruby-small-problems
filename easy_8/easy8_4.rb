def substrings(string)
  substrings = []
  (0..string.size - 1).each do |starting_index|
    (starting_index..string.size - 1).each do |ending_index|
      substrings << string[starting_index..ending_index]
    end
  end
  substrings
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
