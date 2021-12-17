def reverse_words(string)
  split_words = string.split
  split_words.map! do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  split_words.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
