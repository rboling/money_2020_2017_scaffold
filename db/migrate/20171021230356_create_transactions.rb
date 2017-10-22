class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :purchase_date
      t.belongs_to :customer
      t.timestamps null: false
    end
  end
end
