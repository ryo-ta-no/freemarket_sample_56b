class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: true
      t.text :explain, null: false
      t.integer :state_id, foreign_key: true, null: false
      t.integer :price, null: false
      t.integer :buyer_id
      t.integer :prefecture_id, foreign_key: true, null: false
      t.integer :shipping_date, foreign_key: true, null: false
      t.integer :size_id, foreign_key: true, null: false
      t.integer :brand_id, foreign_key: true, null: false
      t.integer :user_id, foreign_key: true, null: false
      t.integer :postage_day_id,foreign_key: true, null: false
      t.integer :postage_id, foreign_key: true, null: false
      t.integer :category_id, foreign_key: true
      t.timestamps
    end
  end
end
