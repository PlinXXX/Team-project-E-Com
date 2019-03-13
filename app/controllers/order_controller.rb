class OrderController < ApplicationController
	include OrderHelper

	def new
		@user = User.find(params[:user_id])
		@amount = amountTotal
	end

	def create
		@user = User.find(params[:user_id])
		@cart = @user.cart
		begin
		# Amount in cents
		  @amount = amountTotal

		  customer = Stripe::Customer.create({
		    email: params[:stripeEmail],
		    source: params[:stripeToken],
		  })

		  charge = Stripe::Charge.create({
		    customer: customer.id,
		    amount: @amount,
		    description: 'Rails Stripe customer',
		    currency: 'usd',
		  })

		  @order = Order.new(
		  	user_id: @user.id,
		  	cart_id: @user.cart.id,
		  	description: 'You have got your cute kitties',
		  	stripe_customer_id: customer.id,
		  	status: true
		  )

		  if @order.save
		  	save(@cart)
		  	empty(@cart)
		  	redirect_to user_cart_path(@user.id, @cart.id)
		  end

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to user_cart_path(@user.id, @cart.id)
		end
	end
end
