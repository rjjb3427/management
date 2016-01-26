json.array!(@menus) do |menu|
  json.extract! menu, :id, :arrival_id, :price, :temperature, :variety
  json.url menu_url(menu, format: :json)
end
