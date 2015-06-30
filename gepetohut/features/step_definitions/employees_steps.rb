Quando( /^eu entro na página inicial de funcionários$/) do
  @employee = FactoryGirl.create( :employee )
  @employees = Employee.all

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

E( /^eu clico no botão de criação de Cadastrar Dados do Funcionário$/) do
  click_button( "Cadastrar Dados do Funcionário" )
end

E( /^eu clico no Funcionário chamado (.*)$/) do |nome_employee|
  find( "##{nome_employee.delete(' ')}-row" ).click
end

Então( /^o sistema deve apresentar as informações relativas ao funcionário$/) do
  visit employee_path(@employee)
end

Então( /^o sistema deve retonar uma tabela contendo todos os funcionários cadastrados$/) do
    find( "table" )
  find( "thead" ).find( "tr" ).find( "th", text: "Nome" )
  find( "thead" ).find( "tr" ).find( "th", text: "CPF" )
  find( "thead" ).find( "tr" ).find( "th", text: "RG" )
  find( "thead" ).find( "tr" ).find( "th", text: "Telefone" )
  find( "thead" ).find( "tr" ).find( "th", text: "Salário" )
  find( "thead" ).find( "tr" ).find( "th", text: "Pizzaria" )

  @employees.each do |employee|
    find( "tbody" ).find("##{employee.name.delete(' ')}-row").find( "td", text: "#{employee.name}" )
  end
end

E( /^eu removo o funcionário (.*)$/) do |nome_employee|
  find( "tbody" ).find( "##{nome_employee.delete(' ')}-row" ).click_button( "Remover" )
end

E( /^eu confirmo a deleção do funcionário (.*)$/) do |nome_employee|
  employee_actual = @employees.find_by( name: nome_employee )
  @employees.delete( employee_actual )
end

Mas( /^sem o funcionário (.*)$/) do |nome_employee|
  expect( @employees.include?( @employee ) ).to be false
end
