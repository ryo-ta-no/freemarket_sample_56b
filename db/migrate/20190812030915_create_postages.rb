class CreatePostages < ActiveRecord::Migration[5.2]
  def change
    create_table :postages do |t|
      t.string :postage, null: false
      t.string :ancestry
      t.timestamps
    end
  end
end
