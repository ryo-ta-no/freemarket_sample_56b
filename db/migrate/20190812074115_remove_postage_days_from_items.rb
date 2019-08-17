class RemovePostageDaysFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :postage_days, :integer
  end
end
