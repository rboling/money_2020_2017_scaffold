class CreateJoinTable2 < ActiveRecord::Migration
  def change
    create_join_table :skus, :purchases do |t|
      t.index [:sku_id, :purchase_id]
      t.index [:purchase_id, :sku_id]
    end
  end
end
