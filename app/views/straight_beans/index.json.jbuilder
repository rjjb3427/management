json.array!(@straight_beans) do |straight_bean|
  json.extract! straight_bean, :id, :bean_id, :loast
  json.url straight_bean_url(straight_bean, format: :json)
end
