class AddOrderToPizza < ActiveRecord::Migration
  def change
    add_reference :pizzas, :order, index: true
  end
end
