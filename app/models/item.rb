class Item < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :product_detail
  belongs_to :ship_base
  belongs_to :prefecture
  belongs_to :ship_date

  has_one_attached :image
  
  with_options presence: true do
    validates :product, length: { maximum: 40}
    validates :product_description, length: { maximum: 1000}
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :product_detail_id
    validates :ship_base_id
    validates :prefecture_id
    validates :ship_date_id
  end
end
