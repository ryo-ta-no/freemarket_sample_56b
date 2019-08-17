class AddPostageDaysToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :postage_days, :integer, null: false
  end
end
