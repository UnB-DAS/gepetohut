class DeleteTableIngredients < ActiveRecord::Migration
  def change
    drop_table :ingredients
  end
end
