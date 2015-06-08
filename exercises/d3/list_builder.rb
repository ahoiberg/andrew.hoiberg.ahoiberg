list = ["abc","def"]

p list



while true
	puts "What can I add?"
	item = gets.strip
	list << item
	puts "Added! Your list is:"
	puts list
end