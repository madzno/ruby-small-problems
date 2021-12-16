s = "abc"

puts s.public_methods.inspect
# will list all methods for the Object class, Basic Object class, and Kernal
# class in addition to the String class  (a lot of methods)

puts s.public_methods(false).inspect
# will list only for the String class when the argument false is supplied
