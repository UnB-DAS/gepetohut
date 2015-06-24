
class Order < ActiveRecord::Base
  belongs_to :user
  has_many :pizzas
  has_one :evaluation

  accepts_nested_attributes_for :pizzas

  DOING = "Fazendo"
  SENDING = "Enviando"
  DELIVERED = "Entregue"

  def define_status
    sending_counter = 0
    delivered_counter = 0

    self.pizzas.each do |pizza|
      if pizza.status == SENDING
        sending_counter += 1
      elsif pizza.status == DELIVERED
        delivered_counter += 1
      end
    end

    if self.pizzas.size == sending_counter
      self.status = SENDING
    elsif self.pizzas.size == delivered_counter
      self.status = DELIVERED
    else
        self.status = DOING
    end
  end
end
