=begin
Read Problem Outloud
Input: an integer
Output: an array of all integers in sequence between 1 and that argument

Rules From Problem;
input integer will always be a valid integer that is greater than 0

Rules From Test Cases;
- can have a single number '1'

Any clarifying Questions?

Data Structure
an array

Algo
define a method sequence that takes an integer as an argument
return an array of the range
of numbers starting with 1 and including the integer argument
at the end

=end

def sequence(integer)
  (1..integer).to_a
end

def sequence(integer)
  arr = []
  1.upto(integer) do |num|
    arr << num
  end
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]


#further exploration

def sequence(integer)
  (integer..0).to_a
end

def sequence(integer)
  arr = []
  0.downto(integer) do |num|
    arr << num
  end
  arr.reverse
end

p sequence(-1) #== [-1, 0]
