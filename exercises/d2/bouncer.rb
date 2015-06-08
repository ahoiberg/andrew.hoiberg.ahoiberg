puts "What is your age?"

age = gets.strip.to_i #better to do both-I guess.

if age >= 50
	puts "You're too old, Grandpa."
elsif age >= 21
	puts "You're old enough! come on in!"
else puts "sorry, you're too young."
end