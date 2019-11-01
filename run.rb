require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Bronx Zoo", "Bronx, NY",)
zoo2 = Zoo.new("Brooklyn Aquarium", "Brooklyn, NY")

animal1 = Animal.new("squirrel", 5, "Mr. Squirrels")
animal2 = Animal.new("cheetah", 20, "Cheetarah")


binding.pry
puts "done"
