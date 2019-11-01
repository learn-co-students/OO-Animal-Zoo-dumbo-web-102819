require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Central Park", "New York")
z2 = Zoo.new("Philadelphia Zoo", "Philadelphia")
z3 = Zoo.new("Something else", "also something else")
z4 = Zoo.new("Brooklyn Zoo", "New York")

a1 = Animal.new("Cat", 5, "kitty")
a2 = Animal.new("Dog", 20, "London")
a3 = Animal.new("Lion", 300, "Simba")
a4 = Animal.new("Cat", 10, "Simba2 Electric Boogaloo")

a1.zoo = z1
a2.zoo = z1
a3.zoo = z1
a4.zoo = z1






binding.pry
puts "done"
