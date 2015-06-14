class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :price

      t.timestamps
    end

	create_table  :ingredients_pizzas, id: false do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :pizza, index: true
    end
  end
end
