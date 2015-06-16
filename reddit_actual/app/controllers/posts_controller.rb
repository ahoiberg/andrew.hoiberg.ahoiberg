class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params["post"].permit(:title, :body))
		@post.user = User.last
		@post.score = 0
		
		@post.save

		redirect_to '/posts'
	end 
end