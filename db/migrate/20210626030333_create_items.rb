class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product,             null: false
      t.text :product_description,   null: false
      t.integer :category_id,        null: false
      t.integer :product_detail_id,  null: false
      t.integer :ship_base_id,       null: false
      t.integer :prefecture_id,      null: false
      t.integer :ship_date_id,       null: false
      t.integer :price,              null: false
      t.integer :user_id,            null: false
      t.timestamps
    end
  end
end
