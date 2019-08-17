class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :card_number, null: false
      t.integer :expirationdate_year, null: false
      t.integer :expirationdate_mouth, null: false
      t.string :card_name, null: false
      t.integer :security_cord, null: false


      t.timestamps
    end
  end
end
