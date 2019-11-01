require "pry"
class Animal
attr_reader :nickname, :species, :zoo
attr_accessor :weight

@@all = []


def initialize (species,nickname, zoo, weight)
    @species = species
    @nickname = nickname
    @weight = weight
    @zoo = zoo
    @@all << self
end #ini methods


def self.all
    @@all
end ## all methods




def self.find_by_species (animal_species)
    
    self.all.select do |animal_instance|
       
    animal_instance.species == animal_species

    end #select


end ## find species

end ## animal class
