class Pizza < ActiveRecord::Base
  belongs_to :order
  has_many :orders

  validates_presence_of :name, :price
end
