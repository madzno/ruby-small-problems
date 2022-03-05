=begin
Read Problem Outloud
Input: an odd integer
Output: output of a diamond made up of
stars

Rules From Problem;
argument will alwasy be an odd integer
diamond will print out * in a n x n grid

Rules From Test Cases;
- n = the number of lines the grid will be
- the maximum line will be the middle line
(odd numbers, so divide the input integer by 2.0 and round up)
- the maximum line will have n # of diamonds
- from 1 to the maximum line the number
    the # of diamonds printed in the middle will increase in size
    1
    3
    5
    7
    9
    All odd numbers from 1 to the integer
- from 1 to the maximum line number
  the # of spaces on *either side* of the diamonds will decrease in size
  maximum number line - 1 4 on either side
  - 1 3 on either side
  - 1 2 on either side
  - 1 1 on either side
  maximum line reached

- from the maximum line number back down to 1
  the # of diamonds printed in the middle will decrease in size
  7
  5
  3
  1
  0
- from the maximum line number back down to 1
  the # of spaces printed on either side will increase in size
  1 on either side
  2 on either side
  3 on either side
  4 on either side

Data Structure
a string

Algo
- define a method diamond that takes a single integer argument, num
- find the 'longest line' by dividing the input integer by 2.0
and rounding up assign this to a variable longest_line

- counting from 1 to input integer (inclusive), if the current integer is odd,
output that number of stars

- counting down from the maximum line number minus 1 to 0,
output that number of spaces on either side of the stars

- counting down from the input integer - 2 to 1, if the current
integer is odd output that number of stars

- counting down from 1 on either side to the maximum line number
minus 1, output that number of spaces on either side of the stars

=end

def diamond(num)
  longest_line = (num / 2.0).ceil

  star = 1

  spaces = longest_line - 1

  loop do
    if star.even?
      star += 1
      next
    else
      puts " #{' ' * spaces} #{ '*' * star} #{ ' ' * spaces}"
    end
    star += 1
    spaces -= 1
    break if star >= num
  end

  star = num - 2

  spaces = 1

  loop do
    break if star < 1
    if star.even?
      star -= 1
      next
    else
      puts " #{' ' * spaces} #{ '*' * star} #{ ' ' * spaces}"
    end
    star -= 1
    spaces += 1
  end

end

diamond(1)
diamond(3)
diamond(9)
