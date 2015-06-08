puts "Welcome to Andrew's quiz!"

points = 0
suffix = (points == 1) ? "" : "s"

#Question 1
puts "What is my last name?"

answer = gets.strip

if answer == "Hoiberg"
	points = points + 1
	suffix = (points == 1) ? "" : "s"
	puts "Correct! You have #{points} point#{suffix}."
else puts "Wrong. You couldn't even get my name. Idiot. You have #{points} point#{suffix}."
end

#Question 2
puts "How many siblings do I have?"

answer = gets.strip

if answer == "0"
	points = points + 1
	suffix = (points == 1) ? "" : "s"
	puts "Correct! You have #{points} point#{suffix}."
else puts "Wrong. I have 0. You have #{points} point#{suffix}."
end

#Question 3

puts "Where do I go to school?"

answer = gets.strip

if answer == "Tufts"
	points = points + 1
	suffix = (points == 1) ? "" : "s"
	puts "Correct! You have #{points} point#{suffix}."
else puts "Wrong. I go to Tufts. You have #{points} point#{suffix}."
end

puts "Thanks for playing!"