=begin
Read Problem Outloud
Input: an integer that represents the width and length
of the grid the diamond is printed on
Output: a diamond

Rules From Problem;
argument will always be an odd integer

Data Structure
array
string

Algo
initialize a stars variable to 1
initialize a spaces variable to the input integer - 1

output spaces / 2, stars, spaces / 2

add 2 to stars and subtract 2 from spaces

stop iterating when stars is equal to input integer

=end

def diamond(integer)
  up_stars = 1
  up_spaces = integer - 1
  loop do
    puts "#{' ' * (up_spaces / 2)} #{'*' * (up_stars)} #{' ' * (up_spaces / 2)}"
    up_stars += 2
    up_spaces -= 2
    break if up_stars > integer
  end
  down_stars = integer - 2
  down_spaces = 2
  loop do
    break if down_stars < 1
    puts "#{' ' * (down_spaces / 2)} #{'*' * (down_stars)} #{' ' * (down_spaces / 2)}"
    down_stars -= 2
    down_spaces += 2
  end
end

diamond(1)

diamond(3)

diamond(9)
