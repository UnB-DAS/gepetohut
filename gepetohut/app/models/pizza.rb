class Pizza < ActiveRecord::Base
  PRESENT = true

  validates :name, presence: PRESENT
  validates :price, presence: PRESENT
end
