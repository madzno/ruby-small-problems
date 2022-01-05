# input = two arguments that return truthy or falsey (aka false or nil)
# output = a boolean (true or false)
# clarifying questions
# in our examples only boolean arguments are given, so will deal
# with just those but in other examples would need to consider
# any type of argument that is "truthy" - aka in ruby anything other
# than an expresion that evaluates to false or nil
# algo
# 1. if the first expression is equal to false or nil and the
# second expression is truthy than evaluates to true
# 2. if the second expression is equal to false or nil and the
# first expresion is truthy than evalutes to true
# 3. if both expressions are truthy evaluates to false
# 4. if both expressions are equal to false or nil evaluates to false

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
