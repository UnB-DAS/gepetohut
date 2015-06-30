class Order < ActiveRecord::Base
  belongs_to :user
  has_many :pizzas
  has_one :evaluation

  accepts_nested_attributes_for :pizzas

  DOING = "Fazendo"
  SENDING = "Enviando"
  DELIVERED = "Entregue"

  def initialize( *params )super( *params )
    self.evaluation = Evaluation.create( rating_pizzeria: nil, rating_pizza: nil, rating_service: nil )
  end

  def define_status
    doing_counter = 0
    sending_counter = 0
    delivered_counter = 0

    self.pizzas.each do |pizza|
      if pizza.status == DOING
        doing_counter += 1
      elsif pizza.status == SENDING
        sending_counter += 1
      elsif pizza.status == DELIVERED
        delivered_counter += 1
      end
    end

    pizzas_size = self.pizzas.size

    if ( doing_counter > 0 &&
         doing_counter < sending_counter &&
         doing_counter > delivered_counter ) ||
       ( doing_counter > sending_counter &&
         doing_counter > delivered_counter )
      self.status = DOING
    elsif ( sending_counter > 0 &&
            sending_counter < delivered_counter &&
            sending_counter > doing_counter ) ||
          ( sending_counter > doing_counter &&
            sending_counter > delivered_counter )
      self.status = SENDING
    elsif delivered_counter > sending_counter &&
          delivered_counter > doing_counter
      self.status = DELIVERED
    end
  end

  def calculate_total_to_pay
    total_to_pay = 0.0

    self.pizzas.each do |pizza|
      if pizza.quantity > 0
        total_to_pay += (pizza.price * pizza.quantity)
      end
    end

    total_to_pay
  end

  def calculate_quantity
    quantity = 0

    self.pizzas.each do |pizza|
      quantity += pizza.quantity
    end

    quantity
  end
end
