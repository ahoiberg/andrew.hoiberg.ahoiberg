class Hero
	def initialize(name, health, power, items)
		@name = name
		@health = health
		@power = power
		@items = items
		@exp  = 0
	end

	def attack(defendant)
		defendant[:health] -= @power
		@exp += 1
	end

	def check_if_dead
		if @health == 0
			puts "I'm dead"
		end
	end

end

class Monster
	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
	end

	def attack(defendant)
		defendant[:health] -= @power
	end
end

Aaron = Hero.new("Aaron", 10, 200, ["scruff", "squash racket"])

