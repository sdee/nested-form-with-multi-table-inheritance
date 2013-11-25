json.array!(@pens) do |pen|
  json.extract! pen, 
  json.url pen_url(pen, format: :json)
end
