class HomePageController < ApplicationController
  def index
  	params_pizzas = params
  	params_pizzas.delete "utf8"
  	params_pizzas.delete "controller"
  	params_pizzas.delete "action"

  	# if we have some pizza to pay
  	unless params_pizzas.values.length == params_pizzas.values.count("0")
  		@order = current_user.orders.build

  		@order.total_to_pay = 0
  		@order.qtd_pizzas = 0
  		pizzas_id = params_pizzas.keys
  		quantity_pizza = params_pizzas.values
		# get whats pizzas that client want
		pizzas_id.each do |pizza_id|
			# get quantity of pizzas that client want
			if params_pizzas[pizza_id.to_s].to_i != 0
				for i in 1 .. params_pizzas[pizza_id.to_s].to_i
					@pizza = Pizza.find(pizza_id)
					@order.pizzas << @pizza
					@order.total_to_pay = @order.total_to_pay + @pizza.price
					@order.qtd_pizzas = @order.qtd_pizzas + 1
				end
			end
		@order.save
		end
  	end

  end
end
