phrase = "HI HOW ARE YOU TODAY"

def twist(message)
	puts message.split("").shuffle.join
end

twist(phrase)