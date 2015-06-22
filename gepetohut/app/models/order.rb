class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :user
  has_many :pizzas
  has_one :evaluation

  validates :qtd_pizzas, presence: true
  validates_numericality_of :qtd_pizzas, presence: true, numericality:true, greater_than: 0


end
