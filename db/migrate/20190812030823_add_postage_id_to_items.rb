class AddPostageIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :postage_id, :integer, foreign_key: true, null: false
  end
end
