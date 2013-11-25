json.array!(@books) do |book|
  json.extract! book, :author
  json.url book_url(book, format: :json)
end
