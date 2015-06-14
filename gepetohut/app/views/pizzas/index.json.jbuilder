json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :name, :price, :rating
  json.url pizza_url(pizza, format: :json)
end
