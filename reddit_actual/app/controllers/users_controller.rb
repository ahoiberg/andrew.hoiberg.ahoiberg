class UsersController <ApplicationController
	def index
		@users = User.all
	end

	def show
    	@user = User.find(params[:id])
    	@posts = @user.posts
  	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params["user"].permit(:username, :score))
		@user.save

		redirect_to '/users'
	end
end