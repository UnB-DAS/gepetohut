Given(/que o cliente está na pagina de cadastro./) do ||
  visit path_to('/customers/new')
end

When(/ele preencher os campos do formulario de cadastro corretamente./) do ||
  fill_in("name", :with => "Jose")
  fill_in("adress", :with => "fga")
  fill_in("email", :with => "deliciabsb@hotmail.com")
  fill_in("telephone", :with => "6667")
end
