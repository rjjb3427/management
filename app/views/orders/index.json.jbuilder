json.array!(@orders) do |order|
  json.extract! order, :id, :menu_id, :person_id, :time, :price_type, :price
  json.url order_url(order, format: :json)
end
