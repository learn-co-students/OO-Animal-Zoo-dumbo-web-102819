require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

dog = Animal.new("dog", "bingo","Bronx Zoo", 5)
cat = Animal.new("cat", "furyy", "Bronx Zoo", 2)
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx, NY")
prospect_zoo = Zoo.new("Prospect Zoo", "Brooklyn, NY")
dog2 = Animal.new("dog", "larry", "Bronx Zoo", 4)





binding.pry
puts "done"
