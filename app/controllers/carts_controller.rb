class CartsController < ApplicationController
	include CartsHelper
	include OrderHelper
	before_action :set_cart
	before_action :authenticate_user

	def show
		@user = User.find(params[:user_id])
		@amount = amountTotal
	end

	private 
	def set_cart
		@cart = Cart.find(params[:id])
	end
end
