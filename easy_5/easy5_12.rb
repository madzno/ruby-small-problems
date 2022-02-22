def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# once you call 'split' and string is turned into an array, you are
# returning a new object - each is returning that new array of words
# and then calling join on it
# if you were to pass in an array and call eachon that array then
# you would be returning the same object
