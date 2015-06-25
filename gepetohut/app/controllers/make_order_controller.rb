class MakeOrderController < ApplicationController
  load_and_authorize_resource :class => Pizza
  check_authorization
  
  def index
    @pizzas = Pizza.all

  end

  def make_order
  	puts "69"*100
  	puts params
  	render "home_page/index"
  end
end
