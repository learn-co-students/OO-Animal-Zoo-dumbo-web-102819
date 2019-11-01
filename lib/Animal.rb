class Animal

    @@all = []
    
    attr_accessor :zoo
    
        def initialize(species, weight, nickname, zoo)
            @species = species
            @weight = weight
            @nickname = nickname
            @zoo = zoo
            @@all << self
        end
    
        def nickname
            @nickname
        end
    
        def weight
            @weight
        end
    
        def species
            @species
        end
    
        def self.all
            @@all
        end
    
        def self.find_by_species(species_arg)
            self.all.select do |animal_instance|
                animal_instance.species == species_arg
            end
        end
end