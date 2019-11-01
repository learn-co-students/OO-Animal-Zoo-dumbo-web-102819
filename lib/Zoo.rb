class Zoo

    attr_reader :name, :location
    
    @@all = []
    
        def initialize(name, location)
            @name = name
            @location = location
            @@all << self
        end
    
        def self.all
            @@all
        end
    
        def animals
            Animal.all.select { |animal_instance| 
            animal_instance.zoo == self }
        end
    
        def animal_species
            new_species = []
            animals.each do |animal_instance|
                new_species << animal_instance.species
            end
            new_species
        end
    
        def find_by_species(species_arg)
            animals.select do |animal_instance| 
                animal_instance.species == species_arg
            end
        end
    
        def animal_nicknames
            array = []
            animals.each do |animal_instance|
                array << animal_instance.nickname
            end
            array
        end
    
        def self.find_by_location(location_arg)
            self.all.select do |zoo_instance|
                zoo_instance.location == location_arg
            end
        end
    end