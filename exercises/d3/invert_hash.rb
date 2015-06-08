hash = {:a => ["b", "c"]}

def invert(data)
	new_hash = {}
	data.each do |key, value|
		new_hash[value] = key
	end
	puts new_hash
end

invert(hash)