class GoodDog
  @@number_of_dogs = 0 # class variables are preceded with @@


  def initialize
    puts self
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs  # class methods are preceded with self.
    puts self
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2



# class GoodDog
#   # constant
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end

#   def to_s
#     "This dog's name is #{name} and it is #{age} in dog years."
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.age
# puts sparky       # due to to_s => This dog's name is Sparky and it is 28 in dog years.
# puts "#{sparky}"  # due to to_s => This dog's name is Sparky and it is 28 in dog years.
# p sparky # same as: puts sparky.inspect




# pp [:name, :age]
# puts [:name, :age]