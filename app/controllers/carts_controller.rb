class CartsController < ApplicationController
	include CartsHelper
	include OrderHelper
	before_action :set_cart
	before_action :authenticate_user

	def show
		@items = compact(@cart)
		@user = User.find(params[:user_id])
		@amount = amountTotal
		@itemToCartS = ItemToCart.where(cart_id: @user.carts.last.id)
	end

	private 
	def set_cart
		@cart = current_user.carts.last
	end
end