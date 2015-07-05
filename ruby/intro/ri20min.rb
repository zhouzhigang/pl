#!/usr/bin/ruby

# Copyright (c) 2015 zzhou
#
# Ruby in 20 minutes
# How to greeting in Ruby?
# From type, method to class
#
# Reference: https://www.ruby-lang.org/en/documentation/quickstart/

# output string
"Hello World"
puts "Hello World" # return nil

# calculator
3+2
3*2
3**2
Math.sqrt(9)

# variables
a = 3 ** 2
b = 4 ** 2
Math.sqrt(a+b)

# define a function
def h
  puts "Hello World"
end
h
h()

# deinfine a function with parameter
def h(name)
  puts "Hello #{name}!"
end
h("Matz")

#
def h(name = "World")
  puts "Hello #{name.capitalize}!"
end
h "chris"
h

# define a class
class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end
# create an instance of the class
g = Greeter.new("Pat")
g.say_hi

# can we get the attribute value of the class
# g.@name # syntax error, unexpected tIVAR, expecting '('


# get all instance methods of class
Greeter.instance_methods
Greeter.instance_methods(false)

g.respond_to?("name")
g.respond_to?("say_hi")
g.respond_to?("to_s")

# change the class defination
class Greeter
  attr_accessor :name
end

g = Greeter.new("Andy")
g.respond_to?("name")
g.respond_to?("name=")
g.say_hi
g.name="Betty"
g
g.name
g.say_hi

# say hi to more people
class MegaGreeter
  attr_accessor :names

  # create the object
  def initialize(names = "World")
    @names = names
  end

  # say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # join the list elements with commas
      puts "Goodbye #{@names.join(",")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

# call the class method
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
