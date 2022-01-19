
def string_to_integer(string)
  digits = string.chars
  numbers = {
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '0' => 0 }
  integer = 0

  digits.map! do |digit|
    digit = numbers[digit]
  end

  digits.each do |digit|
    integer = (10 * integer) + digit
  end

  integer
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
