class Mammal
	def initialize
		@health = 150
		self
	end

	def display_health
		puts "your health is at #{@health}"
		self
	end

end

human = Mammal.new

human.display_health