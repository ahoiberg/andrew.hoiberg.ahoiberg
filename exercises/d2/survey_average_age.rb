puts "Hello!"

puts "How old are you?"

user_age = gets.to_i

puts "How old is your mom?"

mom_age = gets.to_i

puts "How old is your dad?"

dad_age = gets.to_i

avg_age= (user_age + mom_age + dad_age)/3.to_f

puts "Thanks for answering my creepy questions! The average age of your family is #{avg_age}"

puts "Goodbye!"