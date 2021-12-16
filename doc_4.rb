a = [1, 4, 8, 11, 15, 19]

p a.bsearch { |x| x > 8 } #returns 11
p a.bsearch { |x| x == 8 } # returns nil
p a.bsearch { |x| 8 <=> x } # returns 8
