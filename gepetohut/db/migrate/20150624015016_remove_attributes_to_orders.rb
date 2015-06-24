class RemoveAttributesToOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :departure_time, :time
    remove_column :orders, :arrival_time, :time
    remove_column :orders, :customer_id, :integer
  end
end
