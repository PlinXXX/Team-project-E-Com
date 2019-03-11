class HomeController < ApplicationController
  def index

  	@item = Item.all
		
  end

  def show

    @id = params[:id]
    @item = Item.find(@id)

  end
end