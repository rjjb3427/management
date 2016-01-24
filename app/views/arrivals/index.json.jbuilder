json.array!(@arrivals) do |arrival|
  json.extract! arrival, :id, :bean_id, :arrival_type, :date, :soldout
  json.url arrival_url(arrival, format: :json)
end
