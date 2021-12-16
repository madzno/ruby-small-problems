a = %w(a b c d e)
puts a.fetch(7) #raises error
puts a.fetch(7, 'beats me') # returns beat me
puts a.fetch(7) { |index| index**2 } # returns 49
a[7] # returns nil (no error raised)
