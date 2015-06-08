i = 1

while i <=100
	if (i % 15 == 0)
		puts "fizzbuzz"
	elsif (i % 3 == 0)
		puts "fizz"
	elsif (i % 5 == 0)
		puts "buzz"
	else puts i
	end
	i = i+1
end

#make down to two lines if possible?