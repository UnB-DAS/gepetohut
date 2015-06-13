json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :qtd_delivery, :qtd_pizzaiolo, :qtd_income, :qtd_expense, :rating
  json.url restaurant_url(restaurant, format: :json)
end
