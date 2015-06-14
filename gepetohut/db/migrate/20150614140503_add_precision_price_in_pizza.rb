class AddPrecisionPriceInPizza < ActiveRecord::Migration
  def change
    change_column :pizzas, :price, :decimal, precision: 5, scale: 2
  end
end
