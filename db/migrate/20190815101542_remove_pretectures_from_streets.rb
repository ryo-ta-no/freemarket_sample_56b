class RemovePretecturesFromStreets < ActiveRecord::Migration[5.2]
  def change
    remove_column :streets, :pretectures, :string
  end
end
