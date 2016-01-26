json.array!(@bean_buys) do |bean_buy|
  json.extract! bean_buy, :id, :arrival_id, :cost
  json.url bean_buy_url(bean_buy, format: :json)
end
