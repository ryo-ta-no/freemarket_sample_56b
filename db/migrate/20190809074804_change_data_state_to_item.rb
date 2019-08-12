class ChangeDataStateToItem < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :state, :integer
  end
end
