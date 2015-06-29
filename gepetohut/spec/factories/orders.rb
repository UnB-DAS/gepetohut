FactoryGirl.define do
  factory :order, class: Order do
    order_date '2015-06-28 23:23:18 -0300'
    expected_arrival '2015-06-29 01:23:18 -0300'
    user_id 3
    id 100
  end
end
