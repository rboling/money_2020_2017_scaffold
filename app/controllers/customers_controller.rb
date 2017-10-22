class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @purchases = Purchase.where(customer_id: params[:id])
  	@next_purchase = NextPurchase.new
  	@advice = GetAdvice.new.get_advice(@customer.synchrony_account_num)
  	@loyalty = GetLoyalty.new.get_loyalty
  end
end
