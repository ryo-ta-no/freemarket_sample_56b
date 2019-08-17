class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.string :post, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :bilding
      t.integer :phone
      t.integer :user_id, foreign_key: true, null: false
      t.timestamps 
    end
  end
end
