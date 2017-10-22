class NextPurchase
  def next_purchase(account_num)
    url = 'https://syf2020.syfwebservices.com/v1_0/next_purchase'
    headers = {"Content-Type" => "application/json"}
    payload = "{ \"accountNumber\": #{account_num} }"
    response = RestClient::Request.execute(method: :post, url: url, payload: payload, headers: headers)  
    next_purchase = JSON.parse response.body
  end
end