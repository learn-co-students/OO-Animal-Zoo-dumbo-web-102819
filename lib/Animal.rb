class Animal

        attr_reader :species, :nickname
        attr_accessor :weight, :zoo

        @@animal_all = []
          
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo 
        @@animal_all << self 
    end 

    def self.all
        @@animal_all 
    end 

    def self.find_by_species(which_species)
        @@animal_all.select do |animal_instance| 
            which_species == animal_instance.species
        end 
    end 
end
