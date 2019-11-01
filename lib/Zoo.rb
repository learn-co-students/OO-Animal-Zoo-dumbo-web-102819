require "pry"
class Zoo
    attr_reader :name, :location

    @@all = []


    def initialize (name, location)
        @name = name 
        @location = location

        @@all << self

    end  # ini method

    def self.all
        @@all
    end ## all

    def animals 
        Animal.all.select do |animal_instance|
        animal_instance.zoo == self.name
        end 
    end # animal

    def self.find_by_location (zoo_location)
        self.all.select do |zoo_instance|
           
        zoo_instance.location == zoo_location
        end #select

    end #location find
   
    def animal_species 
        new_array = []
        Animal.all.map do |animal_instance|
           
            new_array << animal_instance.species
            new_array

        end # animal species
        new_array.uniq
    end ###animal species


    def find_by_species(species_animal)
        self.animals.select do |animal_instance|
            animal_instance.species == species_animal
        end 
        
    end ##fing species


    def animal_nicknames
        
        animals.map do |animal_instance|
           
        animal_instance.nickname
        end 

    end #nicknames 


end ## zoo class
