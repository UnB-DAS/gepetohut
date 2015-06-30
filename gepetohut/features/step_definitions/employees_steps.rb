Quando( /^eu entro na página inicial de funcionários$/) do
  @employee = FactoryGirl.create( :employee )

  visit employees_path
end

E( /^eu clico e acesso a página de cadastro de funcionários$/) do
  click_button( "Cadastrar Novo Funcionário" )
end

E( /^eu preencho o campo nome do funcionário com (.*)$/) do |name_employee|
  page.fill_in( "name-employee", with: name_employee )
end

E( /^eu preencho o campo CPF com (.*)$/) do |cpf_employee|
  page.fill_in( "cpf-employee", with: cpf_employee )
end

E( /^eu preencho o campo rg com (.*)$/) do |rg_employee|
  page.fill_in( "rg-employee", with: rg_employee )
end

E(/^eu clico no botão de criação de Cadastrar Dados do Funcionário$/) do
  click_button( "Cadastrar Dados do Funcionário" )
end

Então( /^o sistema deve apresentar as informações relativas ao funcionário$/) do
  visit employee_path(@employee)
end
