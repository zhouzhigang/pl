#!/usr/bin/ruby

# Copyright (c) 2015 zzhou
#
# quick start, print "hello, world" in the screen
# some futures form the example
# 1) intercept
# 2) needn't declare type
# 3) has return value
# At least two type string

puts 'hello, world'

language = 'Ruby'
puts "hello, #{language}"

language = 'my Ruby'
puts "hello, #{language}"


# What's the language's paradiam?
# Object-oriented(Ruby)
# Functional(Haskell)
# Mixed function and object-oriented(Scale)
# Based on stack(Postscript, Forth)
# Logical(Prolog)
# Prototype(Io, Lua, Self)

p 4.class
p 4.methods

# condition
# similar with other language
# true and false are first-class object
#
#
x = 4
p x < 5

puts "This appears to be false." unless x == 4
puts "This appears to be true." if x == 4

# why design unless when there is if?
if x == 4
	puts "This appears to be true."
end

unless x == 4
	puts "This appears to be true."
end

puts "This appears to be true." if not true
puts "This appears to be true." if !true

# why design until when there is while?
x = x + 1 while x < 10
x = x - 1 until x == 1

while x < 10
	x = x + 1
	puts x
end

# what is true and false in ruby?
# only false and nil are false
puts "This appears to be true." if 1
puts "This appears to be true." if "random string" # warmming
puts "This appears to be true." if 0 # 0 also is true
puts "This appears to be true." if true

puts "This appears to be false." if false
puts "This appears to be false." if nil

# logic operations
puts true and false
puts true and false
puts true && false

# puts true && this_will_cause_undefined_error
puts false && this_will_cause_undefined_error

# puts true or this_will_cause_undefined_error
puts true || this_will_cause_undefined_error
# puts true | this_will_cause_undefined_error

# type safty

# in `+': String can't be coerced into Fixnum (TypeError)
# 4 + 'four'
p 4.class
p (4.0).class

# duck type
i = 0
a = ['100', 100]
while i < 2
  puts a[i].to_i
  i = i + 1
end
