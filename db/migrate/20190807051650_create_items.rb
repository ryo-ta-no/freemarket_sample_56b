class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :explain, null: false
      t.string :state_id, null: false
      t.integer :price, null: false
      t.integer :buyer_id, foreign_key: true, null: false
      t.integer :postage, null: false
      t.integer :prefecture_id, foreign_key: true, null: false
      t.integer :shipping_date, oreign_key: true, null: false
      t.integer :size_id, foreign_key: true, null: false
      t.integer :brand_id, foreign_key: true, null: false
      t.integer :user_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
