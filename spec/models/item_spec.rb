require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '商品出品できるとき' do
      it '全ての登録があれば保存できること' do
        expect(@item).to be_valid
      end
    end

    context '商品出品でないとき' do
      it '商品名が空だと登録できない' do
        @item.product = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Product can't be blank")
      end
      it '商品の説明が空だと登録できない' do
        @item.product_description = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Product description can't be blank")
      end
      it '商品のカテゴリーが空だと登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category must be other than 1")
      end
      it '商品の状態が空だと登録できない' do
        @item.product_detail_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Product detail must be other than 1")
      end
      it '配送料の負担が空だと登録できない' do
        @item.ship_base_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship base must be other than 1")
      end
      it '発送元の地域が空だと登録できない' do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture must be other than 1")
      end
      it '発送までの日数が空だと登録できない' do
        @item.ship_date_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship date must be other than 1")
      end
      it '金額が空だと登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it '金額300円以下だと出品できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it '金額1000万円以上だと出品できない' do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
      it '金額が全角だと出品できない' do
        @item.price = '３００'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it '画像が空だと登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
