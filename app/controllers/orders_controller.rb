class OrdersController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def new
    @order_address = OrderAddress.new
  end

  def show
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      
      Payjp.api_key = "sk_test_f26f76a41701b96a39409cb2"
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

  def order_params
    params.require(:order_address).permit(:price, :post_code, :prefecture_id, :city, :block, :building, :phone_number, :order_id).merge(user_id: current_user.id, item_id: params[:item_id],token: params[:token])
  end

end
