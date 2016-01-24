json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :bean_type, :supplier_id, :description
  json.url bean_url(bean, format: :json)
end
