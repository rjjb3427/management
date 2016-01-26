json.array!(@stocks) do |stock|
  json.extract! stock, :id, :arrival_id, :stockholder_id, :cost, :dividend
  json.url stock_url(stock, format: :json)
end
