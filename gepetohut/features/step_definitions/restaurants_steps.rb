Quando( /^eu entro na página inicial de restaurantes$/ ) do
  @restaurant = FactoryGirl.create( :restaurant )

  visit restaurants_path
end

E( /^eu clico e acesso a página de cadastro de restaurantes$/ ) do
  click_button( "Cadastrar Novo Restaurante" )
end

E( /^eu preencho o campo nome (.*)$/ ) do |name|
  page.fill_in( "name-restaurant", with: name )
end

E( /^eu preencho o campo de entregadores com (.*)$/ ) do |delivery|
  page.fill_in( "delivery-restaurant", with: delivery )
end

E( /^eu preencho o campo de pizzaiolos com (.*)$/ ) do |pizzaiolo|
  page.fill_in( "pizzaiolo-restaurant", with: pizzaiolo )
end

E( /^eu clico no botão de atualizar restaurante$/) do
  click_button( "Atualizar Restaurante" )
end 

Então(/^o sistema deve apresentar as informações relativas ao restaurante$/) do
  visit restaurant_path(@restaurant)  
end

