class AddQuantityToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :quantity, :integer
  end
end
