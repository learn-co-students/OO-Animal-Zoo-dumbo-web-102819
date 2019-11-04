class Animal
    
    #getter method
    attr_reader :nickname, :species
    
    #getter and setter method
    attr_accessor :weight, :zoo

    #class variable
    @@all = []

    #initialize attributes when instance is created
    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo
        
        #push all instances in class variable all
        @@all << self
    end

    #class method get all instances
    def self.all
        @@all
    end

    def self.find_by_species(specie)
        self.all.select do |animal_instance|
            animal_instance.species == specie
        end
    end
    
end
