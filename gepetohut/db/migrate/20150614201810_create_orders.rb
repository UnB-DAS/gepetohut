class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :total_to_pay
      t.integer :qtd_pizzas
      t.datetime :order_date
      t.time :departure_time
      t.time :arrival_time
      t.time :expected_arrival

      t.timestamps
    end
  end
end
