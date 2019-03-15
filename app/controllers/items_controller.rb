class ItemsController < ApplicationController
	before_action :authenticate_user!, expect: [:index, :show]

	def new
		@item = Item.new
	end

	def show
    @id = params[:id]
    @item = Item.find(@id)
    @thisItemInCart = ItemToCart.where(cart_id: current_user.carts.last.id, item_id: @item.id)
  end
end
