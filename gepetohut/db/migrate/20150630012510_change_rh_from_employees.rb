class ChangeRhFromEmployees < ActiveRecord::Migration
  def change
    rename_column :employees, :rh, :rg
  end
end
