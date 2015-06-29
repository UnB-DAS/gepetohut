Quando(/^eu entro na página de cadastrar pedido$/) do
  @order = FactoryGirl.create( :order )

  visit new_order_path
end

E(/^eu preencho o campo quantidade com (.*) da pizza (.*)$/) do |quantity, pizza|
  find("##{pizza}-row").fill_in( "quantity_pizzas_order", with: quantity )
end

E(/^eu clico no botão de realização de pedido$/) do
  click_button( "Realizar Pedido" )
end

Então(/^o sistema deve apresentar as informações relativas ao pedido.$/) do
  visit order_path(@order)
end
