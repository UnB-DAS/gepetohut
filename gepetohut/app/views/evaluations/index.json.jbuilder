json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :rating_pizzeria, :rating_service, :rating_pizza
  json.url evaluation_url(evaluation, format: :json)
end
