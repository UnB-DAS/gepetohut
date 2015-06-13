class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :rating_pizzeria
      t.integer :rating_service
      t.integer :rating_pizza

      t.timestamps
    end
  end
end
