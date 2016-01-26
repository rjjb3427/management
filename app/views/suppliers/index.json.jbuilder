json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :location
  json.url supplier_url(supplier, format: :json)
end
