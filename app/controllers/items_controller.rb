class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create
  end
  
  private
  def item_params
    params.require(:item).permit(:product, :product_description, :category_id, :product_detail_id, :ship_base_id, :prefecture_id, :ship_date_id, :price)
  end
end
