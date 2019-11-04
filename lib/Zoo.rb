class Zoo
    
    #getter method
    attr_reader :name, :location
    
    #class variable
    @@all = []

    #instance method
    def initialize(name, location)
        #instance variables
        @name = name
        @location = location

        #push all instances in class variable all
        @@all << self
    end

    #class method get all instances
    def self.all
        @@all
    end
    
    # return all the animals that a specific instance of a zoo has
    def animals
        Animal.all.select do |animal_instance|
            animal_instance.zoo == self
        end
    end

    def animal_species
        self.animals.map do |animal_instance|
            animal_instance.species
        end.uniq
    end

    def find_by_species(specie)
        self.animals.select do |animal_instance|
            animal_instance.species == specie
        end
    end

    def animal_nicknames
        self.animals.map do |animal_instance|
            animal_instance.nickname
        end
    end

    def self.find_by_location(location)
        self.all.select do |zoo_instance|
            zoo_instance.location == location
        end
    end
end
