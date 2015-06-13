class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :cpf
      t.string :rh
      t.string :phone
      t.float :salary
      t.belongs_to :restaurant, index: true

      t.timestamps
    end
  end
end
