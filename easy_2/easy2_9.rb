name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# line 1 - name variable is bounded to the string object "Bob"
# line 2 - save_name variable points to the same space in memory as
# the name variable, and thus is assigned to the string object "Bob"
# line 3- name.upcase! is called, which is a mutating method, thus
# the string object "Bob" is mutated to "BOB" at the same point in memory
# thus name and save_name are now pointing to "BOB"
# 4- "BOB"
# "BOB"
# is the output
