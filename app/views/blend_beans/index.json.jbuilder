json.array!(@blend_beans) do |blend_bean|
  json.extract! blend_bean, :id, :bean_id, :blended_name
  json.url blend_bean_url(blend_bean, format: :json)
end
