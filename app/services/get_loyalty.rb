class GetLoyalty
  def get_loyalty
    url = Rails.application.config.base_url + "loyalty" 
    headers = {"Content-Type" => "application/json"}
    payload = "{ \"accountNumber\": 1337, \"sku\":\"item-1234\", \"totalPriceRequested\":23 }"
    response = RestClient::Request.execute(method: :post, url: url, payload: payload, headers: headers)  
    loyalty = JSON.parse response.body
  end
end