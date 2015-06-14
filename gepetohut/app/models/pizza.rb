class Pizza < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
end
