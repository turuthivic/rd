json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :title, :description
  json.url subcategory_url(subcategory, format: :json)
end
