class Zoo
    @@zoo_all = []
    
    attr_accessor :location, :name 

    def initialize(name, location)
        @location = location
        @name = name 
        @@zoo_all << self
    end 

    def self.all 
        @@zoo_all
    end 

    def animals
        Animal.all.select do |animal_instances|
            self == animal_instances.zoo 
        end 
    end 

    def animal_species
        animals.map do |zoo_animals|
        zoo_animals.species 
        end 
    end 

    def find_by_speciees(which_species)
        animals.select do |zoo_animals|
        which_species = zoo_animals.species 
        end 
    end

    def animal_nicknames
        animals.map do |zoo_animals|
        zoo_animals.nickname 
        end 
    end 

    def self.find_by_location(location)
       names = []
       self.all.map do |zoo_instances|
            if location == zoo_instances.location 
                names << zoo_instances.name 
            end 
        end 
        names
    end 

end
