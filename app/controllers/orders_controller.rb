class OrdersController < ApplicationController

  def index
    @orders
    @item = Item.find(params[:item_id])
  end

  def new
  end

  def show
  end

  def create
    @order = Order.create(order_params)
    Address.create(address_params)
    redirect_to root_path
  end

  private

  def order_params
    params.permit(:item_id).merge(user_id: current_user.id)
  end

  def address_params
    params.permit(:post_code, :prefecture_id, :city, :block, :building, :phone_number).merge(order_id: @order.id)
  end

end
