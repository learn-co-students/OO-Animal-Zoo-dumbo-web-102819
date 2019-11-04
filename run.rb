require "pry"

require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
# require 'pry'


z1 = Zoo.new("zootopia", "new york")
z2 = Zoo.new("zootopia2", "new new york")
z3 = Zoo.new("zena", "new york")

a1 = Animal.new("tiger", 100, "tiggy", z1)
a2 = Animal.new("pig", 50, "piggy", z2)


# binding.pry

puts "done"
binding.pry