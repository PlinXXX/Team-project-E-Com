module OrderHelper

	def amountTotal
		amount = 0
		@user.carts.last.items.each do |item|
			amount += item.price
		end
		return amount.to_i
	end
end
