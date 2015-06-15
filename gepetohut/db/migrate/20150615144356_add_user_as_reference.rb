class AddUserAsReference < ActiveRecord::Migration
  def change
    add_reference :orders, :user, index: true
    add_reference :evaluations, :user, index: true
  end
end
