class CreatePostageDays < ActiveRecord::Migration[5.2]
  def change
    create_table :postage_days do |t|

      t.timestamps
    end
  end
end
