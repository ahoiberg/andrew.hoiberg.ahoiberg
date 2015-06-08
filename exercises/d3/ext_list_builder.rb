list = []

puts "Welcome to list builder++!"

while true
	puts "What can I do for you? (Add/remove/quit)"
	item = gets.strip.split
	if (item[0]=="add")
		item.delete("add")
		word = item.join(" ")
		list << word
	elsif (item[0] == "remove")
		item.delete("remove")
		word = item.join(" ")
		list.delete(word)
	elsif (item[0]=="quit")
		break
	else puts "Command not recognized. Please try again."
	end
	p list
end