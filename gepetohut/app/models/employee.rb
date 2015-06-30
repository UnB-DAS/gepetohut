class Employee < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :name, :cpf, :rg, :phone, :salary
  usar_como_cpf :cpf
end
