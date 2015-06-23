class AddIsMenuToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :is_menu, :boolean
  end
end
