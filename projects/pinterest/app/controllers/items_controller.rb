class ItemsController <ApplicationController
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params["item"].permit(:title, :description))
		@item.user = current_user
		@item.save

		redirect_to '/items'
	end
end