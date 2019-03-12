class ItemsController < ApplicationController
	before_action :authenticate_user!, expect: [:index, :show]

	def show
    @id = params[:id]
    @item = Item.find(@id)
  end
end
