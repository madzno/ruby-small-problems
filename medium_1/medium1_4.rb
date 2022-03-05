=begin
Read Problem Outloud
Input: an integer n
Output: an array representing the number of lights that are on

Rules From problem/test cases:

- lights 1 to n

- Round 1, all lights are turned on 1, 2, 3, 4, 5
- Round 2, 2 and 4 are toggled (off)
- Round 3, 3 is toggled (off)
- Round 4, 4 is toggled (on)
- Round 5, 5 is toggled (off)
- 1 is on, 4 is on,

- need a way of tracking if the current life is
on or off (hash with true and false?)

- after 'n' rounds return an array of all keys which
value is 'true'

Data Structure
A hash
An Array

Algo

define a method 1000_lights that takes one argument, an integer

initialize an empty hash array called lights

for each number from 1 up to the input integer add a hash key
to the empty represents that number with a value of 'true'
hash[num] = true

initialize a counter variable equal to 2

for each key in the lights hash, if the key is evenly divided
by the counter variable, change the value at that key to false

add 1 to the counter variable

stop iterating when the counter variable is equal to the
input integer

return the hash

initialize an empty array result_array

iterate through the lights hash and if a keys value is true
add the key to the results array

return the results array
=end

def get_lights_hash(num)
  lights = {}
  1.upto(num) do |key|
    lights[key] = true
  end
  lights
end

def toggle_lights(hsh, num)
  counter = 2
  loop do
    hsh.each do |key, value|
      hsh[key] = !value if key % counter == 0
    end
    counter += 1
    break if counter > num
  end
  hsh
end

def get_on_lights(hsh)
  result_array = []
  hsh.each do |key, value|
    result_array << key if hsh[key] == true
  end
  result_array
end


def thousand_lights(num)
  initial_lights = get_lights_hash(num)
  lights = toggle_lights(initial_lights, num)
  lights_on = get_on_lights(lights)
end



p thousand_lights(5) == [1, 4]
p thousand_lights(10) == [1, 4, 9]
