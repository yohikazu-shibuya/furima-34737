class Item < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :product_detail
  belongs_to :ship_base
  belongs_to :prefecture
  belongs_to :ship_date

  has_one_attached :image
  
  validates :product, presence: true
  validates :product_description, presence: true
  validates :price, presence: true

  validates :category_id, numericality: { other_than: 1 }
  validates :product_detail_id, numericality: { other_than: 1 }
  validates :ship_base_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :ship_date_id, numericality: { other_than: 1 }

  validates :image, presence: true
end
