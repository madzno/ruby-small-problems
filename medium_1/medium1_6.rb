=begin
Read Problem Outloud
Input:
Output:

Rules From Problem;

- stack, elements are added on top of the stack and popped off of the stack

- a stack-and-register program -- one that uses a stack of values
- each operation in the language operates on a register, which can be thought
of as the current value - the register is not part of the stack

- operations that require two values pop the topmost item from the stack, perform
the operation using the popped value and register value and store the result back
in the register

Algo

initialize an empty stack variable, = []
initialize a register varialbe to 0 = 0

assign the input string split on whitespace to an array called commands

iterate through the command string and assign each string to the parameter
token

when token is PUSH push the value of the register to the stack

when token is ADD assign register to the result of adding itself to the
popped value from the stack

when token is SUB assign register to the result of subtracting a popped value
from the stack from itself

when token is MULT assign register to the result of multiplying the popped value
from the stack by itself

when token is DIV assign register to the result of dividing the register value
by the popped value

when token is MOD assign register to the result of moduling the register value by the
popped value

when token is POP assign the register to the popped value of the register

when token is PRINT print the current value of register

when token is anything else (a number) assign register to the integer value of the string integer


=end

def minilang(string)
  stack = []
  register = 0
  commands = string.split
  commands.each do |token|
    case token
    when 'PUSH' then stack.push(register)
    when 'ADD'  then register += stack.pop
    when 'SUB'  then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV'  then register /= stack.pop
    when 'MOD'  then register %= stack.pop
    when 'POP'  then register = stack.pop
    when 'PRINT'then puts register
    else             register = token.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')

