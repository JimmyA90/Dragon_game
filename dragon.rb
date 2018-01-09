require_relative "mammal"
class Dragon < Mammal
	def initialize
		@health = 180
	end

	def display_health
		puts "your health is #{@health.to_s}"
		super
	end

	def fly
		@health -= 10
		puts "Youre flying to the town"
		self
	end

	def attack_town
		@health -= 50
		puts "You attack the town"
		self
	end

	def eat_human
		@health += 20
		puts "Health went up by 20"
		self
	end
end



shenron = Dragon.new

puts "My Lord. You must command your fleet of dragons into battle!"
puts "Press 1 to fly! Press 2 to attack the town! Press 3 to devour humans to your liking! Press 4 to end your attack!"

x = 0

 until x == 1
 	command = gets.chomp.to_i
	if command == 1
		shenron.fly.display_health
	elsif command == 2
		shenron.attack_town.display_health
	elsif command == 3
		shenron.eat_human.display_health
	elsif command == 4
		x += 1
		puts "Your attack has ended!"
	else
		puts "Thats not a command my lord!"
	end
end


		