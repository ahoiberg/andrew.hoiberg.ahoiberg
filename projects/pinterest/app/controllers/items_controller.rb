class ItemsController <ApplicationController
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params["item"].permit(:title, :description, :user_id))
		@item.save

		redirect_to '/items'
	end
end