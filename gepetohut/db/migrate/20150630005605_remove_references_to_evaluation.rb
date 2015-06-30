class RemoveReferencesToEvaluation < ActiveRecord::Migration
  def change
    remove_column :evaluations, :customer_id, :integer
    remove_column :evaluations, :user_id, :integer
  end
end
