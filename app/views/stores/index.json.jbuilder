json.array!(@stores) do |store|
  json.extract! store, :name
  json.url store_url(store, format: :json)
end
