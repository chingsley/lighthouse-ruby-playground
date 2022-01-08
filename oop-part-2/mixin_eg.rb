module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end


sparky = GoodDog.new
puts sparky.class
puts sparky.speak("Arf!")  # => Arf!


bob = HumanBeing.new   
bob.speak("Hello!")   # => Hello!

puts "\n"

puts "--- GoodDog ancestors ---"
puts GoodDog.ancestors

puts "\n"

puts "--- HumanBeing ancestors ---"
puts HumanBeing.ancestors