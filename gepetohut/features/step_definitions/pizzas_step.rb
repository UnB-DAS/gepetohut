Quando( /^eu entro na página inicial de pizzas$/ ) do
  visit pizzas_path
end

E( /^eu clico e acesso a página de cadastro de pizzas$/ ) do
  click_button( "Criar Nova Pizza" )
end

E( /^eu preencho o campo nome com (.*)$/ ) do |name|
  page.fill_in( "name-field", with: name )
end

E( /^eu preencho o campo preço com (.*)$/ ) do |price|
  page.fill_in( "price-field", with: price )
end

E( /^eu clico no botão de criação de pizza$/ ) do
  click_button( "Atualizar Pizza" )
  @pizza = FactoryGirl.create( :pizza )
end

Então( /^o sistema deve apresentar as informações relativas à nova pizza$/ ) do
  visit pizza_path(@pizza)
end
