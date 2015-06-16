class HomePageController < ApplicationController
  def index
  	params_pizzas = params
  	params_pizzas.delete "utf8"
  	params_pizzas.delete "controller"
  	params_pizzas.delete "action"


  	unless params_pizzas.values.length == params_pizzas.values.count("0")
  		@order = Order.new
  		@order.total_to_pay = 0
  		@order.qtd_pizzas = 0
  		pizzas_id = params_pizzas.keys
  		puts pizzas_id
  		quantity_pizza = params_pizzas.values
		# get whats pizzas that client want
		pizzas_id.each do |pizza_id|
			puts "aidhasiduhaisuhdiasuhdiashdihas"
			
			
			# get quantity of pizzas that client want
			quantity_pizza.each do |quantity|
				quantity = quantity.to_i
				for i in 1 .. quantity
					@pizza = Pizza.find(pizza_id)
					@order.pizzas << @pizza
					@order.total_to_pay = @order.total_to_pay + @pizza.price
					@order.qtd_pizzas += 1
				end
			end
		end
		current_user.orders << @order
  	end

  end
end
