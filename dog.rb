require_relative "mammal"
class Dog < Mammal

	def pet
		@health += 5
		puts "health went up by 5"
		self
	end

	def walk
		@health -= 1
		puts "Your health went down by 1"
		self
	end

	def run
		@health -= 10
		puts "Your health went down by 10"
		self
	end

end

bell = Dog.new

bell.pet.pet.pet.pet.pet.pet.run.display_health