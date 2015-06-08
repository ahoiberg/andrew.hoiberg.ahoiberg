puts "Enter a number"

iterate = gets.strip.to_i

count = 2

first_element = 1
second_element = 1
new_element = 1

while count < iterate
	new_element = first_element + second_element
	first_element = second_element
	second_element = new_element
	count = count + 1
end

puts "Fibonacci at #{iterate}: #{new_element}"