=begin
Read problem outlout

Input: an integer, n
Ouptut: the last digit of the nth fibonacci number

Rules/Test Cases

The fibonacci sequence starts with two 1's and then the remaining
numbers are the sum of the previous two numbers

Would need to create the fibonacci sequene up until the n'th index
minus 1 and then return the last digit of the last number in the sequence

Data Structure
An array

Algo
Initialize a method fibonacci_last that takes an integer as an argument

initialize an array fibonacci with the digits 1 and 1 at index 0 and 1
[1, 1]

initialize an index variable to 2

initialize a loop

calculate the next number in the fibonacci sequence by summing together
the number at the current index - 1 and the number at the current index - 2

append this number to the end of the fibonacci array

add 1 to the index

stop looping when integer is greater than the input integer (add this to the top
of the loop)

transform all the digits in the fibonacci array to strings

return the last character of the last element in fibonacci converted
into an integer

=end

def fibonacci_last(integer)
  fibonacci = [1, 1]
  index = 2
  loop do
    num = fibonacci[index - 1] + fibonacci[index - 2]
    fibonacci << num
    index += 1
    break if index >= integer
  end
  fibonacci.map! { |digit| digit.to_s }
  fibonacci[-1][-1].to_i
end

p fibonacci_last(15) == 0
p fibonacci_last(2) == 2
p fibonacci_last(20) == 5
p fibonacci_last(100) == 5

