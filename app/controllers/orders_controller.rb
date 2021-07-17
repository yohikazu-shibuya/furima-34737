class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :set_order, only: [:index, :create]
  before_action :move_to_index, only: [:index]
  

  def index 
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @item.price,
        card: order_params[:token], 
        currency: 'jpy'
      )
      @order_address.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private
  def set_order
    @item = Item.find(params[:item_id])
  end

  def move_to_index
     @item.order.present?
      redirect_to root_path
  end

  def order_params
    params.require(:order_address).permit(:price, :post_code, :prefecture_id, :city, :block, :building, :phone_number, :order_id).merge(user_id: current_user.id, item_id: params[:item_id],token: params[:token])
  end

end
