class Customer < ActiveRecord::Base
	has_many :orders, dependent: :destroy
	has_many :evaluations, through :orders
end
