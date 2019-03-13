class ItemToCartsController < ApplicationController
	include ItemToCartsHelper
	def create
		@user = User.find(params[:user_id])
		@item = Item.find(params[:item_id])

		ItemToCart.create(item_id: @item.id, cart_id: @user.cart.id)

		respond_to do |format|
			format.html{ redirect_to "/", notice: "Item added to cart" }
		end
	end

	def destroy
		@user = User.find(params[:user_id])
		@item = Item.find(params[:item_id])

		@item_to_cart = ItemToCart.where(item_id: @item.id, cart_id: @user.id).first
		@item_to_cart.destroy
		redirect_to user_cart_path(@user.id, @user.id)
	end
end
