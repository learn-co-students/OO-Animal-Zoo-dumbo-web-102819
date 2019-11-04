require 'pry'

class Zoo
    attr_reader :name, :location

   @@all=[]


    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end
    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal_instance|
           animal_instance.zoo == self
        end
    end

    def animal_species
        animals.map  {|animal_instance|animal_instance.species }.uniq 
    end

    def find_by_species(species)
        animals.select do |animal_instance|
            animal_instance.species == species
        end
    end

    def animal_nicknames
        animals.map {|animal_nicknames| animal_nicknames.nickname }
    end

    def self.find_by_location(location)
        @@all.select {|found_location| found_location.location == location}

    end

    

end
