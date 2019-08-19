class RemoveAuthenticaitionNumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :authenticaition_number, :string
  end
end
