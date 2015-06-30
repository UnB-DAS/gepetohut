FactoryGirl.define do
  factory :evaluation, class: Evaluation do
    rating_pizzeria 8
    rating_service 6
    rating_pizza 8
    description "Atendimento bao"
    id 100
  end
end
