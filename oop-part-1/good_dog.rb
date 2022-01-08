# class GoodDog
#   # The initialize method gets called every time you create a new object.
#   def initialize(name)
#     @name = name
#   end

#   def name     # This was renamed from "get_name"
#     @name
#   end

#   def name=(name)  # This was renamed from "set_name="
#     @name = name
#   end

#   def speak
#     "#{@name} says Arf"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak


# fido = GoodDog.new("Fido");
# puts fido.speak
# puts fido.name
# fido.name = "Fido 2.0"; # same as: fido.name=("Fido 2.0");
# puts fido.name



# USING attr_accessor IN-PLACE of getters AND setters
class GoodDog
  attr_accessor :name, :height, :weight

  # The initialize method gets called every time you create a new object.
  def initialize(n, h, w)
    @name = n
    @height = h
    @wight = w
  end

  def speak
    "#{self.name} says Arf"  # with the attr_accessor, we don't need @name to access the name attr from within the class. i.e we're now calling the instance method rather than the instance variable
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

end


# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.speak


# fido = GoodDog.new('Fido', '13 inches', '11 lbs');
# puts fido.speak
# pp fido.name
# fido.name = "Fido 2.0"; # same as: fido.name=("Fido 2.0");
# pp fido.name

# puts "\n"
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.


