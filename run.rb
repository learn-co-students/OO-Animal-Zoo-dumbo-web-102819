require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("bronx","africa")
zoo2 = Zoo.new("brooklyn","america")
zoo3 = Zoo.new("rose","america")
zoo4 = Zoo.new("towy","africa")
zoo5 = Zoo.new("mawy","africa")


animal1 = Animal.new("tiger",90 , "slasher")
animal2 = Animal.new("sloth",99 , "steady")
animal3 = Animal.new("shark",120 , "biter")
animal4 = Animal.new("whale",330 , "mike")

animal1.zoo = zoo1
animal2.zoo = zoo1
animal3.zoo = zoo2
animal4.zoo = zoo3


binding.pry
puts "done"
