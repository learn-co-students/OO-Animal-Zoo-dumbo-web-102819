class Animal
	attr_accessor :weight, :zoo
	attr_reader :nickname, :species

	@@all = []
	def initialize(name, species, weight, zoo)
		@nickname = name
		@species = species
		@weight = weight
		@zoo = zoo

		@@all << self
	end

	def self.all 
		@@all
	end

	def self.find_by_species(species)
		@@all.select do |animal|
			animal.species == species
		end
	end
end
