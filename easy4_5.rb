=begin
PEDAC
Problem
Input; an integer
Output; an integer
Explicit rules/Clarifying questions
- input integer is a number greater than 1 that is whole
- input integer is the end of a range, 1 to that integer
- output integer is the sum of all of the multiples of 3 or 5 that lie between 1
and the input integer
- the input integer is included in the range
Data strucutre; array
Algorithm
1. define a method 'multisum' with one parameter that is an integer
2. initalize a local variable 'multiples_of_three' to an empty array
3. initalize a local variable 'mutliples_of_five' to an empty array
3. divide integer by 3 and add results to 'multiples_of_three' array until the integer is less than or equal to 0
4. divide integer by 5 and add resulting integer to mutliples_of_five array until the integer is less than or equal to 0
5. merge the multiples_of_three and mutliples_of_five array to results_array
6. add up the sum of the results_array
6. return that sum
=end

def multiple?(integer)
  integer % 3 == 0 || integer % 5 == 0
end

def multisum(integer)
  multiples = []
  while integer > 0
    multiples << integer if multiple?(integer)
    integer -= 1
  end
  sum = multiples.reduce(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
