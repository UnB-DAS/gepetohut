json.array!(@orders) do |order|
  json.extract! order, :id, :total_to_pay, :qtd_pizzas, :order_date, :departure_time, :arrival_time, :expected_arrival
  json.url order_url(order, format: :json)
end
