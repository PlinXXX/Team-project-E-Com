module ItemToCartsHelper
	def remove(item)
		new_cart = []
		@cart.items.each do |it|
			unless it == item
				new_cart << it
			end
		end
		@cart = new_cart
	end
end
