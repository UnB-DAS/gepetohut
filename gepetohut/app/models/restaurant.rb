class Restaurant < ActiveRecord::Base
  has_many :employees, dependent: :destroy
end
