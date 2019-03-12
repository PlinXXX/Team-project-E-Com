class CartsController < ApplicationController
	include CartsHelper
	before_action :set_cart
	before_action :authenticate_user

	def show
	end

	private 
	def set_cart
		@cart = Cart.find(params[:id])
	end
end
