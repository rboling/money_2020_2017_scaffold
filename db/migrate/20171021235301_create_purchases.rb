class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :customer, index: true, foreign_key: true
      t.date :purchase_date

      t.timestamps null: false
    end
  end
end
