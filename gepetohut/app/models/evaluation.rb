class Evaluation < ActiveRecord::Base
  belongs_to :order

  validates_presence_of :rating_pizzeria, :rating_service, :rating_pizza, allow_blank: true
end
