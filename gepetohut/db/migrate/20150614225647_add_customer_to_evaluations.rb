class AddCustomerToEvaluations < ActiveRecord::Migration
  def change
    add_reference :evaluations, :customer, index: true
  end
end
