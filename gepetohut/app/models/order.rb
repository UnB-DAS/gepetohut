
class Order < ActiveRecord::Base
  belongs_to :user
  has_many :pizzas
  has_one :evaluation

  accepts_nested_attributes_for :pizzas
end
