class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    # binding.pry
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
   end
  end

  private
  def item_params
    params.require(:item).permit(:image, :product, :product_description, :category_id, :product_detail_id, :ship_base_id, :prefecture_id, :ship_date_id, :price).merge(user_id: current_user.id)
  end
end
