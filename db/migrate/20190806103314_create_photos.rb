class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :img, null: false
      t.integer :item_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
