module CartsHelper

	def authenticate_user
		unless @cart.id == current_user.carts.last.id
			redirect_to '/'
		end
	end
end
