class GetAdvice
  def get_advice(accountNum)
    url = 'https://syf2020.syfwebservices.com/v1_0/advice'
    headers = {"Content-Type" => "application/json"}
    payload = "{ \"accountNumber\": #{accountNum} }"
    response = RestClient::Request.execute(method: :post, url: url, payload: payload, headers: headers)  
    next_purchase = JSON.parse response.body
  end
end