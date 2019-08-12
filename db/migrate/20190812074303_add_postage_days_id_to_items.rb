class AddPostageDaysIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :postage_days_id, :integer, foreign_key: true, null: false
  end
end
