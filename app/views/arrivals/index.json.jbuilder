json.array!(@arrivals) do |arrival|
  json.extract! arrival, :id, :bean_id, :arrival_type, :amount, :arrival_date, :soldout, :soldout_date
  json.url arrival_url(arrival, format: :json)
end
