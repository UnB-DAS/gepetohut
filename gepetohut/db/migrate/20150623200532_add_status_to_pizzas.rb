class AddStatusToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :status, :text
  end
end
