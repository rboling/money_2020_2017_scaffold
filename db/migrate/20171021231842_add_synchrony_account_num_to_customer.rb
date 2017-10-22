class AddSynchronyAccountNumToCustomer < ActiveRecord::Migration
  def change
  	add_column :customers, :synchrony_account_num, :integer
  end
end
