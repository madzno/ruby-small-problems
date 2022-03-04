def swap_name(string)
  full_name = string.split
  "#{full_name[1]}, #{full_name[0]}"
end


p swap_name('Joe Roberts') == 'Roberts, Joe'
