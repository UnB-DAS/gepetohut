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

Quando(/^eu entro na página inicial de pedidos$/) do
  @order = FactoryGirl.create( :order )

  visit orders_path
end

E(/^eu clico no primeiro pedido listado$/) do
  find( "#100-row" ).click
end

Então(/^o sistema deve retornar uma tabela contendo todas os pedidos$/) do
  visit orders_path
end

E(/^eu cancelo o primeiro pedido$/) do
  find( "#100-row" ).click_button( "Cancelar" )
end

E( /^eu confirmo o cancelamento desse pedido$/ ) do 
  @order.delete
end

Mas(/^sem a pedido cancelado.$/) do
  orders = Order.all
  expect( orders.include?( @order ) ).to be false
end
