cookbook = {
	:pancakes => ["flour", "milk", "eggs"],
	:sandwich => ["bread", "meat", "cheese"]
}

cookbook.each do |food, ingredients|
	puts food
	ingredients.each {|item| puts item}
end