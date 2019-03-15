module CartsHelper

	def authenticate_user
		unless @cart.id == current_user.carts.last.id
			redirect_to '/'
		end
	end

	def compact(cart)
		newcart = []
		cart.items.each do |item|
			newcart << item unless newcart.include?(item)
		end
		newcart
	end
end
