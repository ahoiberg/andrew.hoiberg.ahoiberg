class Petition < ActiveRecord::Base
	def self.get_petitions
		response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?limit=3")
		parsed_response = JSON.parse(response)
		petitions = parsed_response["results"]
		#petitions.map! {|petition| petition["title"]}
	end
end