class MakeOrderController < ApplicationController
  load_and_authorize_resource :class => Pizza
  check_authorization
  
  def index
    @pizzas = Pizza.all
  end
end
