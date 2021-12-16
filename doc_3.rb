def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Ruby will first fill in assigned/provided arguments from the method call
# and then fill in with any default arguments that are missing.
# i.e above will output [4, 5, 3, 6]
