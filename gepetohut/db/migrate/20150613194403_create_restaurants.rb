class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :qtd_delivery
      t.integer :qtd_pizzaiolo
      t.float :qtd_income
      t.float :qtd_expense
      t.integer :rating

      t.timestamps
    end
  end
end
