#input; an integer
# output; a boolean
# data structure - possibly an array?
# 1. define a method palindromic_number?
# 2. set input as an integer
# 3. set integer split into digits as an array digits
# 4. compare that array to the same array reversed
# 5. return that boolean

def palindromic_number?(number)
  digits = number.digits
  digits == digits.reverse
end


# def palindrome?(string)
#   string.reverse == string
# end

# def palindromic_number?(number)
#   palindrome?(number.to_s)
# end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true


