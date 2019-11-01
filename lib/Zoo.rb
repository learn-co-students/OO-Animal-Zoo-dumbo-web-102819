# location, name, all, animals, animal species, find by species, animal nicknames, find by location

class Zoo
    
    attr_reader :name, :location, :animals

    @@all = []

    def initialize(zoo_name, zoo_location)
        @name = zoo_name
        @location = zoo_location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals (zoo_name)
        Animal.all.select do |animal|
            animal.zoo == self 
    end

end