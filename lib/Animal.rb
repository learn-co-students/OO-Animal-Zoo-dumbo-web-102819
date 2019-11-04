class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self

    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        @@all.select do |animal_instance|
            animal_instance.species == species
        end
    end
        
    # find a species
    #return array of samespecies
end
