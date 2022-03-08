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

def output_first_half(integer)
  stars = 1
  spaces = integer - 1
  loop do
    puts "#{' ' * (spaces / 2)} #{'*' * (stars)} #{' ' * (spaces / 2)}"
    stars += 2
    spaces -= 2
    break if stars > integer
  end
end

def output_second_half(integer)
  stars = integer - 2
  spaces = 2
  loop do
    break if stars < 1
    puts "#{' ' * (spaces / 2)} #{'*' * (stars)} #{' ' * (spaces / 2)}"
    stars -= 2
    spaces += 2
  end
end

def diamond(integer)
  output_first_half(integer)
  output_second_half(integer)
end

diamond(1)

diamond(3)

diamond(9)
