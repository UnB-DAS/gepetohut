YES = true

Quando( /^eu entro na página inicial de pizzas$/ ) do
  @pizzas_in_menu = Pizza.where( is_menu: YES )
  @pizza = FactoryGirl.create( :pizza )

  visit pizzas_path
end

E( /^eu clico e acesso a página de cadastro de pizzas$/ ) do
  click_button( "Criar Nova Pizza" )
end

E( /^eu preencho o campo nome da pizza com (.*)$/ ) do |name|
  page.fill_in( "name-field", with: name )
end

E( /^eu preencho o campo preço com (.*)$/ ) do |price|
  page.fill_in( "price-field", with: price )
end

E( /^eu clico no botão de criação de pizza$/ ) do
  click_button( "Atualizar Pizza" )
end

E( /^eu clico na Pizza chamada (.*)$/ ) do |name_pizza|
  find( "##{name_pizza.delete(' ')}-row" ).click
end

E( /^eu removo a pizza (.*)$/ ) do |name_pizza|
    find( "tbody" ).find( "##{name_pizza}-row" ).click_button( "Remover" )
end

E( /^eu confirmo a deleção da pizza de (.*)$/ ) do |name_pizza|
  pizza = @pizzas_in_menu.find_by( name: name_pizza )
  @pizzas_in_menu.delete( pizza )
end

Mas( /^sem a pizza de (.*)$/ ) do |name_pizza|
  expect( @pizzas_in_menu.include?( @pizza ) ).to be false
end

Então( /^o sistema deve apresentar as informações relativas à pizza$/ ) do
  visit pizza_path(@pizza)
end

Então( /^o sistema deve retonar uma tabela contendo todas as pizzas$/ ) do
  find( "table" )
  find( "thead" ).find( "tr" ).find( "th", text: "Nome" )
  find( "thead" ).find( "tr" ).find( "th", text: "Preço" )

  @pizzas_in_menu.each do |pizza|
    find( "tbody" ).find("##{pizza.name.delete(' ')}-row").find( "td", text: "#{pizza.name}" )
    find( "tbody" ).find("##{pizza.name.delete(' ')}-row").find( "td", text: "R$ #{pizza.price.round},00" )
  end
end
