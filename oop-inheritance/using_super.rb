# ------------------------------------------------
# class Animal
#   def speak
#     "Hello!"
#   end
# end


# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n 
#   end

#   # we use super to invoke the speak method from the superclass, Animal
#   def speak
#     "#{self.name} says "+ super 
#   end
# end

# sparky = GoodDog.new('Sparky');
# puts sparky.speak
# ------------------------------------------------


# ------------------------------------------------
# #  CALLING SUPER  WITH NO ARGUMENT IN INITIALIZATION
# class Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n 
#   end


#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :color

#   def initialize(n)
#     super
#     self.color = n 
#   end

#   # we use super to invoke the speak method from the superclass, Animal
#   def speak
#     "#{self.name} says "+ super 
#   end
# end

# bruno = GoodDog.new('brown');
# puts bruno.speak
# puts bruno.inspect
# ------------------------------------------------


# ------------------------------------------------
#  CALLING SUPER  WITH ARGUMENT IN INITIALIZATION
class Animal
  attr_accessor :name

  def initialize(n)
    self.name = n 
  end


  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :color

  def initialize(color, name)
    super(name) # if you omit the 'name' argument here, Ruby will raise an ArgumentError exceiption because it'll try to call super with the two arguments from initialze, (color, name), but the super constructor expects only one argument: initialize(name)
    self.color = color 
  end

  # we use super to invoke the speak method from the superclass, Animal
  def speak
    "#{self.name} says "+ super 
  end
end

sparky = GoodDog.new('brown', 'Sparky');
puts sparky.speak
puts sparky.inspect
# ------------------------------------------------