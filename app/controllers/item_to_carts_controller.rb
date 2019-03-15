class ItemToCartsController < ApplicationController
	include ItemToCartsHelper
	def create
		@user = User.find(params[:user_id])
		@item = Item.find(params[:item_id])

		# sameItemToCart = ItemToCart.find(item_id: @item.id, cart_id: @user.carts.last.id)

		myItemInMyCart = ItemToCart.new(
			item_id: @item.id, 
			cart_id: @user.carts.last.id
		)

		respond_to do |format|
			if myItemInMyCart.save
				format.html{ redirect_to "/", notice: "Item successfully added to cart" }
				format.js {notice: "Item successfully added to cart"}
			end
		end
	end

	def destroy
		@user = User.find(params[:user_id])
		@item = Item.find(params[:item_id])
		@item_to_cart = ItemToCart.where(item_id: @item.id, cart_id: @user.carts.last.id)
		@item_to_cart.each do |itc|
			itc.destroy
		end 
		respond_to do |format|
			format.html{ 
				redirect_to user_cart_path(@user.id, @user.id), notice: "Item successfully removed from cart" 
			}
			format.js{
				notice: "Item successfully removed from cart" 
			}
		end
	end
end
