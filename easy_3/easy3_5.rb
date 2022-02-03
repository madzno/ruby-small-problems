# def square(num)
#   num * num
# end

# p square(5) == 25
# p square(-8) == 64

def multiply(num1, num2)
  num1 * num2
end

def cube(num)
  multiply(multiply(num, num), num)
end

p cube(3)
