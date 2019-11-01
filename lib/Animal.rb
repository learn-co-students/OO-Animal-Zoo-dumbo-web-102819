class Animal
    attr_writer
    attr_reader :name, :nickname, :species
    attr_accessor :zoo, :weight

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
        @@all.select{|animal|
        animal.species == species
        }
    end
end
