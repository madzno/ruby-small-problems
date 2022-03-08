=begin
Read problem outlout

Input: an integer (n)
Ouptut: returns the nth fibonacci number

Rules/patterns

Fibonacci sequence - first two numbers are 1 and 1
Remaining numbers are (num - 1) + (num - 2)

Data Structure
An array

Algo
Define a method fibonacci that takes an integer as an argument

initialize an array called sequence whith the 1 and 1 at index 0 and 1

starting at index 2, append the result of the summing the previous two
numbers to the fibonacci array
example;
fibonacci = [1, 1]
num = (num[index - 1] + num[index - 2])
fibonacci << num

add 1 to the index and continue this loop

stop adding numbers when the value of index is greater than or equal to
the input number minus 1 (add this break statement to the beggining so
index 0 and 1 are not effected)

return the digit at the -1 index
=end

def fibonacci(integer)
  fibonacci = [1, 1]
  index = 2
  loop do
    break if index > integer - 1
    num = (fibonacci[index - 1] + fibonacci[index - 2])
    fibonacci << num
    index += 1
  end
  fibonacci[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075

