module Swimmable
  def swim 
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

puts sparky.swim                 # => I'm swimming!
puts neemo.swim                  # => I'm swimming!
# puts paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>