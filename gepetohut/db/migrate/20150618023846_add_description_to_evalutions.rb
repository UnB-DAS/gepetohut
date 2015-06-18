class AddDescriptionToEvalutions < ActiveRecord::Migration
  def change
    add_column :evaluations, :description, :text
  end
end
