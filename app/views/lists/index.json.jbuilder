json.array!(@lists) do |list|
  json.extract! list, :id, :item, :description
  json.url list_url(list, format: :json)
end
