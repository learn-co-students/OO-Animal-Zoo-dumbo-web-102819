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
          animal.zoo == zoo_name
        end
    end

    def find_by_species (species_search)
        current_zoo = animals(self)
        current_zoo.select do |animal|
          animal.species == species_search
        end
      end

      def animal_nicknames
        current_zoo = animals(self)
        zoo_nicknames = []
        current_zoo.each do |animal|
          zoo_nicknames << animal.nickname
        end
        return zoo_nicknames
      end

      def self.find_by_location (location_name)
        Zoo.all.select do |zoo|
          zoo.location == location_name
          end
      end

end
