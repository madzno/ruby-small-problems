def get_substrings(string)
  sub_strings = []
  (0..string.size - 1).each do |starting_index|
    (starting_index..string.size - 1).each do |ending_index|
      sub_strings << string[starting_index..ending_index]
    end
  end
  sub_strings
end

p get_substrings('madeline')
p get_substrings('supercali')
