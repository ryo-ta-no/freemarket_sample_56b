class AddIndexToBrandBrands < ActiveRecord::Migration[5.2]
  def change
    add_index :brands, :brand
  end
end
