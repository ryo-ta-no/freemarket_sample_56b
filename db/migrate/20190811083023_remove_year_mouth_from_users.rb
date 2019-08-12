class RemoveYearMouthFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :year_mouth, :integer
  end
end
