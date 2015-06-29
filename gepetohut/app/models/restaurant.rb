class Restaurant < ActiveRecord::Base
  has_many :employees, dependent: :destroy

  validates_presence_of :name, :qtd_pizzaiolo, :qtd_delivery
end
