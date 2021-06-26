class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Iweet.new
  end

  # def create
  #   Items.create(item_params)
  # end
  
  # private
  # def item_params
  #   parms.require(:item).permit()
  # end
end
