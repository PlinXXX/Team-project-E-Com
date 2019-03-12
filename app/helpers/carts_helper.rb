module CartsHelper

	def authenticate_user
		unless @cart.id == current_user.id
			redirect_to '/'
		end
	end
end
