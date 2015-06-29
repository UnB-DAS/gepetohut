FactoryGirl.define do
  factory :employee, class: Employee do
    name "José Silva e Silva"
    cpf "208.107.562-85"
    rg "2.977.269"
    phone "9852-2627"
    salary 700.00
    restaurant_id 1
    id 100
  end
end
