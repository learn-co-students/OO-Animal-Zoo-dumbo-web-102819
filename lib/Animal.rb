# nickname, weight, species, all, zoom, find by species

class Animal

    attr_reader :nickname, :species
    attr_accessor :weight, :zoo

    @@all = []

    def initialize (animal_species, animal_weight, animal_nickname)
        @species = animal_species
        @weight = animal_weight
        @nickname = animal_nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species (species_search)
      Animal.all.select do |animal|
        animal.species == species_search
      end
    end

end
