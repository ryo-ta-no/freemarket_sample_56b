class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :first_kana, :string, null: false
    add_column :users, :last_kana, :string, null: false
    add_column :users, :call_number, :string, null: false, unique: true
    add_column :users, :birth_day, :integer
  end
end
