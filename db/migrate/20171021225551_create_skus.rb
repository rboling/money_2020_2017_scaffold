class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
