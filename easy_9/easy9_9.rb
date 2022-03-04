=begin
Read Problem Outloud
Input: three intigers
Output: a string representing the users grade

Rules From Problem;
-ranges of integers that represent certain grades

Rules From Test Cases;
average is equal to the three numbers added together
and then divided by the count of the numbers

Any clarifying Questions?

Data Structure
range
array

Algo
define a constant number of scores equal to 3

define a method get_letter_grade equal to a case statement which includes
all 5 grade ranges and assigns 'grade' based on the average within
those ranges

define a method get_grade that takes three integer arguments

assign a variable
average to the sum of the three arguments together divided
by number of scores

assign a variable grade to the return value of calling get_letter_grade
and passing average as an argument
=end

NUMBER_OF_SCORES = 3

def get_letter_grade(average)
  case
  when (90..100).include?(average)
    'A'
  when (80...90).include?(average)
    'B'
  when (70...80).include?(average)
    'C'
  when (60...70).include?(average)
    'D'
  when (0...60).include?(average)
    'F'
  end
end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / NUMBER_OF_SCORES
  get_letter_grade(average)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# EXTRA CREDIT
=begin
'A' branch of case statment would be
when average >= 90
OR add another branch
when average > 100
A+
=end
