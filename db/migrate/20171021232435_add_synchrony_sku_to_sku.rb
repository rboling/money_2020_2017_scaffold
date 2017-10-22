class AddSynchronySkuToSku < ActiveRecord::Migration
  def change
  	add_column :skus, :synchrony_sku, :string
  end
end
