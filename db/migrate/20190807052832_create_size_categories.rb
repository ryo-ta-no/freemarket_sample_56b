class CreateSizeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :size_categories do |t|
      t.integer :size_id, foreign_key: true, null: false
      t.integer :category_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
