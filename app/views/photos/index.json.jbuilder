json.array!(@photos) do |photo|
  json.extract! photo, :id, :imgURL
  json.url photo_url(photo, format: :json)
end
