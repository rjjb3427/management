json.array!(@people) do |person|
  json.extract! person, :id, :name, :person_type, :description
  json.url person_url(person, format: :json)
end
