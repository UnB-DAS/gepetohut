class RemoveRatingsToPizzasAndRestaurants < ActiveRecord::Migration
  def change
    remove_column :pizzas, :rating, :integer
    remove_column :restaurants, :rating, :integer
  end
end
