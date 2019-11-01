class Zoo
	attr_accessor :name
	attr_reader :location
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
		Animal.all.select do |animal|
			animal.zoo == self
		end
	end

	def animal_species
		#uniq_species = []
		#animals.each do |animal|
		#	uniq_species << animal.species
		#end
		#uniq_species.uniq

		animals.map do |animal|
			animal.species
		end.uniq
		#Animal.all.species.uniq
	end

	def find_by_species(species)
		animals.select do |animal|
			animal.species == species
		end
	end

	def animal_nicknames
		animals.map do |animal|
			animal.nickname
		end
	end

	def self.find_by_location(location)
		@@all.select do |zoo|
			zoo.location == location
		end
	end
end
