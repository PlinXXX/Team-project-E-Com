class HomeController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
    @id = params[:id]
    @item = Item.find(@id)
    puts "*"*100
    puts @item.title

    puts "*"*100
  end

end

