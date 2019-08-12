class RemoveYearDayFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :year_day, :integer
  end
end
