=begin
Read problem outlout

Input: an integer (n) representing the number of lights
Ouptut: an array representing the lights that are toggled 'on'

Rules from Problems/Test cases

n represents the number of lights and also the number of rounds

for each round the numbers of the lights that are toggled are multiples of
the rounds number

at the end of n rounds, the array that is returned represents the light numbers
of the lights that are turned on

Data Structure
A hash
An array


Algo

define a method called thousand_lights that takes an integer as an argument

initialize the lights_hash with keys that are made up of the integers 1 until
n and with values all equal to true

starting with round 2 (round 1 all lights are turned on),

- loop through the lights hash

- change the values of the lights that are multiples for the current round number,
multiples means there is no remainder when these numbers are moduloed by the current
round number

- add 1 to the round number and repeat

- stop looping when the round number is equal to the input of n

- initialize a results array

- loop through the lights hash and if a key's value is equal to true, then
add the key it to the results array

- return the results array

=end

def initialize_hash(n)
  lights_hash = {}

  1.upto(n) do |num|
    lights_hash[num] = true
  end
  lights_hash
end

def toggle_light(lights_hash, n)
  round = 2

  loop do

    lights_hash.each do |key, value|
      if key % round == 0
        lights_hash[key] = !value
      end
    end

    round += 1

    break if round > n
  end
  lights_hash
end

def get_on_lights(lights_hash)
  result_array = []
  lights_hash.each do |key, value|
    if value == true
      result_array << key
    end
  end
  result_array
end

def thousand_lights(n)
  lights_hash = initialize_hash(n)
  lights_hash = toggle_light(lights_hash, n)
  get_on_lights(lights_hash)
end

p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(1000)


##FURTHER EXPLORATION - USING AN ARRAY TO REPRESENT the 1000 LIGHTS INSTEAD
## OF A HASH

=begin
Algo

initialize an array 'lights' to an empty array

initialize a variable length_of_array to the value of n

append the boolean true to the lights_array for the 'n' number of times + 1

lights now is an array of boolean trues that runs 1 length longer than n

initialize a variable round to the value 2

initialize a loop

loop through the lights array by index and if the current index is
divisble by the current round number change the boolean element
at that index to its oppositve value

add 1 to the round value

stop looping when the round value is greater than the value of n

initialize an array on_light_indexes to an empty array

loop through the lights array by index and if the current element is
equal to true then add that index to the on_light_indexes array

return the on_light_indexes array

=end
def initialize_lights(n)
   lights = []
  n.times do |boolean|
    lights << true
  end
  lights
end

def toggle_lights(arr, n)
  round = 2
  loop do
    arr.each_with_index do |element, index|
      if index % round == 0
        arr[index] = !element
      end
    end
    round += 1
    break if round > n
  end
  arr
end

def get_on_lights(arr)
  on_light_indexes = []
    arr.each_with_index do |element, index|
      if element == true && index != 0
        on_light_indexes << index
      end
    end
  on_light_indexes
end

def thousand_lights(n)
  lights = initialize_lights(n)
  lights = toggle_lights(lights, n)
  get_on_lights(lights)
end

p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(1000)
