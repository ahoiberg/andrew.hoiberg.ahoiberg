require 'rest-client'
require 'json'

front_page = RestClient.get "http://www.reddit.com/r/funny.json"

parsed_response = JSON.parse(front_page)

posts = parsed_response["data"]["children"]

posts.each_with_index do |post,index|
	puts "#{index}: #{post["data"]["permalink"]}"
end