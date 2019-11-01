require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx Zoo", "Bronx")
z2 = Zoo.new("Brooklyn Zoo", "England")
z3 = Zoo.new("Queens Zoo", "Bronx")

a1 = Animal.new("banana", "monkey", 35, z1)
a2 = Animal.new("scar", "lion", 200, z2)
a3 = Animal.new("kitty", "dog", 60, z1)

a4 = Animal.new("peter", "dog", 15, z1)
a5 = Animal.new("slowpoke", "sloth", 15, z1)

binding.pry
puts "done"
