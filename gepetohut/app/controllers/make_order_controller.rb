class MakeOrderController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
end
