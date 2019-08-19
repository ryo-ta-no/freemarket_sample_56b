class ChangeDataStateToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :state_id, :integer, foreign_key: true
  end
end
