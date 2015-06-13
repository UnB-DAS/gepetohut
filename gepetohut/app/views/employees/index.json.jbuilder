json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :cpf, :rh, :phone, :salary
  json.url employee_url(employee, format: :json)
end
