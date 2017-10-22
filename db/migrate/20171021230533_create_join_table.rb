class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :skus, :transactions do |t|
      t.index [:sku_id, :transaction_id]
      t.index [:transaction_id, :sku_id]
    end
  end
end
