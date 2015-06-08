list = {}

puts "Welcome to list builder++ (now with hashes)!"

while true
	puts "What can I do for you? (Add/remove/quit)"
	item = gets.strip.split
	if (item[0]=="add")
		item.delete("add")
		word = item.join(" ")
		if list.has_key?(word)
			list[word]=list[word] +1
		else list[word] = 1
		end
	elsif (item[0] == "remove")
		item.delete("remove")
		word = item.join(" ")
		if list[word] == 1
			list.delete(word)
		else list[word]=list[word] -1
		end
	elsif (item[0]=="quit")
		break
	else puts "Command not recognized. Please try again."
	end
	p list
end