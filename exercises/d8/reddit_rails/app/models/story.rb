class Story < ActiveRecord::Base

	def self.get_stories
		response = RestClient.get "http://www.reddit.com/top.json?limit=10"
		parsed_response = JSON.parse(response)
		stories = parsed_response["data"]["children"]
		stories.map! {|story| story["data"]["title"]}
	end	

end