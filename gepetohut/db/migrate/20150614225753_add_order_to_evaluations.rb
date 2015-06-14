class AddOrderToEvaluations < ActiveRecord::Migration
  def change
    add_reference :evaluations, :order, index: true
  end
end
