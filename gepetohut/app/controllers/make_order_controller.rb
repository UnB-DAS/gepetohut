class MakeOrderController < ApplicationController
  def index
  	@pizzas = Pizza.all
  end

  def finish_order
    render "app/views/home_page/index"
  end
end
