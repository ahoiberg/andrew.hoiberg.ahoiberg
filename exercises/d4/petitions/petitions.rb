require 'rest-client'
require 'json'

# Greet user
puts "Hello, Welcome to petitions!"

puts "What kind of petitions do you want to see? (Open/Closed)"

status = gets.strip

offset = 0

while true
	#Get petitions
	begin
	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json/?status=#{status}&offset=#{offset}"
	rescue RestClient::ResourceNotFound
		puts "Sorry, whitehouse.gov is currently down"
		break
	end
	#converts response to a hash in JSON format
	parsed_response = JSON.parse(response)
	# access results key in hash
	petitions = parsed_response["results"]

	if petitions.empty?
		puts "No more petitions to show"
		break
	end

	puts "Showing petitions of status: #{status.upcase}"

	#print each petition
	petitions.each_with_index do |petition, index|
		puts "#{offset + index + 1}: [#{petition["status"].upcase}] #{petition["title"]}"
	end

	puts

	offset +=10

	puts "Would you like to see more? (y/n)"

	break if gets.strip == "n"

end

#Say Goodbye
puts "All petitions printed. Goodbye"

