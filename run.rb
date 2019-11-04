require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

qz = Zoo.new("Queens Zoo", "Queens, NY")
bk = Zoo.new("Brooklyn Zoo", "Brooklyn, NY")

pika = Animal.new("Pika", "Pokemon", 10, qz)
ghastly = Animal.new("Ghast", "Pokemon", 15, qz)
ruffles = Animal.new("Ruffles", "Dog", 14, bk)
meowsers = Animal.new("Meowsers", "Cat", 8, bk)

binding.pry
puts "done"
