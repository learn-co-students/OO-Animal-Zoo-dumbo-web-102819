class Zoo

    @@all = []

    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{ |animal|
           self == animal.zoo
        }
    end

    def animal_species
        animals.map { |animal|
        animal.species
    }.uniq
    end

    def find_by_species(species)
        animals.select {|animal|
        animal.species == species
        }
    end

    def animal_nicknames
        animals.map{ |name|
        name.nickname
        }
    end

    def self.find_by_location(location)
        @@all.select{ |zoo|
            zoo.location == location
        }
    end


end
