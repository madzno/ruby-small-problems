5.step(to: 10, by: 3) { |value| puts value }

# starts at 5 and limit is 10, increments by 3
# output is 5, 8. returns number #5

p 10.step(by: -1).take(4)
# starts at 10 and will do 4 iterations as indicated by "take"
# increments by -1 will output and return [10, 9, 8, 7]

p 3.step(to: 5) {|value| print value, " "}
# starts at 1 and limit is 5, when no "by" is given step
# defaluts to 1 will output 3, 4, 5. returns number #3

