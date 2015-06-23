class MakeOrderController < ApplicationController
  load_and_authorize_resource
  check_authorization
  
  def index
    @pizzas = Pizza.all
  end
end
