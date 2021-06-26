class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product
      t.text :product_description
      t.integer :category_id
      t.integer :product_detail_id
      t.integer :ship_base_id
      t.integer :prefecture_id
      t.integer :ship_date_id
      t.integer :price
      t.timestamps
    end
  end
end
