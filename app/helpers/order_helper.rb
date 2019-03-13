module OrderHelper

	def amountTotal
		amount = 0
		@user.cart.items.each do |item|
			amount += item.price
		end
		return amount.to_i
	end

	def empty(cart)
		cart.items = []
	end

	def save(cart)
		@order.cart = cart
		@order.save
	end
end
