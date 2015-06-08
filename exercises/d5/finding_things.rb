hash = {
	:name1 => "Andrew",
	:name2 => "Rafi",
	:name3 => "Alex",
	:name4 => "Mariah",
	:name5 => "Andrew"
}

def index_of(word, letter)
	index = -1
	if word.include?(letter)
		index = word.index(letter)
	end
end

def find_by_name(hash, string)
	if hash[:name] == string
		pp {key => hash[key]}
	end
end

def filter_by_name(hash, string)
	results = []
	if hash[:name] == string
		results << 
	end
end

find_by_name[hash, "Andrew"]


