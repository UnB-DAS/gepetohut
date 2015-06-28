Quando( /^eu entro na página de cadastro de usuário$/ ) do
  @new_customer = FactoryGirl.build( :customer )

  visit new_user_registration_path
end

Quando(/^eu entro na página inicial de usuários$/) do
  visit users_path
end

E( /^eu preencho o campo nome do usuário com (.*)$/ ) do |name|
  page.fill_in( "user-name", with: name )
end

E( /^eu preencho o campo endereço com (.*)$/ ) do |address|
  page.fill_in( "user-address", with: address )
end

E( /^eu preencho o campo email com (.*)$/ ) do |email|
  page.fill_in( "user-email", with: email )
end

E( /^eu preencho o campo senha com (.*)$/ ) do |password|
  page.fill_in( "user-password", with: password )
end

E( /^eu preencho o campo de confirmação de senha com (.*)$/ ) do 
  |confirm_password|
  page.fill_in( "user-confirm-password", with: confirm_password )
end

E( /^eu clico no botão Cadastrar$/ ) do
  click_button( "Cadastrar" )
end

E(/^eu clico no usuário chamado (.*)$/) do |name|
  find( "##{name.delete(' ')}-row" ).click
  @customer = User.find_by( name: "customer" )
end

Então(/^o sistema deve retornar para a página inicial da aplicação$/) do
  visit home_page_index_path
end

Então(/^o sistema deve apresentar as informações relativas ao usuário$/) do
  visit user_path(@customer)
end

Então(/^o sistema deve retonar uma tabela contendo todos os usuários$/) do
  find( "table" )
  find( "thead" ).find( "tr" ).find( "th", text: "Nome" )
  find( "thead" ).find( "tr" ).find( "th", text: "Endereço" )
  find( "thead" ).find( "tr" ).find( "th", text: "Email" )

  User.all.each do |user|
    find( "tbody" ).find( "##{user.name.delete(' ')}-row" ).find( "td", text: /\A#{user.name}\z/ )
    find( "tbody" ).find( "##{user.name.delete(' ')}-row" ).find( "td", text: "#{user.address}" )
    find( "tbody" ).find( "##{user.name.delete(' ')}-row" ).find( "td", text: "#{user.email}" )
  end
end
