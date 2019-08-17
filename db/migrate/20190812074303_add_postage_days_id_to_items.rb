class AddPostageDaysIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :postage_day_id, :integer, foreign_key: true, null: false
  end
end
