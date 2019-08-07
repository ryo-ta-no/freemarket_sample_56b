class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :first_kana, :string, null: false
    add_column :users, :last_kana, :string, null: false
    add_column :users, :year, :integer, null: false
    add_column :users, :year_mouth, :integer, null: false
    add_column :users, :year_day, :integer, null: false
    add_column :users, :call_number, :string, null: false, unique: true
    add_column :users, :authenticaition_number, :string, null: false, unique: true
  end
end
