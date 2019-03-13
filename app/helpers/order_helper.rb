module OrderHelper

	def amountTotal
		amount = 0
		@user.cart.items.each do |item|
			amount += item.price
		end
		return amount
	end

	def empty(cart)
		cart.items = []
	end
end
