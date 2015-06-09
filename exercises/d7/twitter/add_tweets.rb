def create_tweets
	i = 1
	while i <=10
     	tweet = Tweet.create(:body => "Ruby is fat", :user_id => 1)
     	i += 1
     end
 end

 create_tweets
