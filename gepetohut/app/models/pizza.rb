class Pizza < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  belongs_to :order
  has_many :orders

  PRESENT = true

  validates :name, presence: PRESENT
  validates :price, presence: PRESENT
end
