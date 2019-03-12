class ItemToCartsController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		@item = Item.find(params[:item_id])

		@user.cart.items << @item

		respond_to do |format|
			format.html{ redirect_to "/", notice: "Item added to cart" }
		end
	end
end
