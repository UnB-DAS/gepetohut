Dado( /^que eu sou (.*)/ ) do |role|
  if role.eql?( "administrador" )
    @user = FactoryGirl.create( :admin )
  elsif role.eql?( "gerente" )
    @user = FactoryGirl.create( :manager )
  elsif role.eql?( "cliente" )
    @user = FactoryGirl.create( :customer )
  end
end

E( /^eu estou na página inicial da aplicação/ ) do
  visit root_path
end

E( /^eu estou logado/ ) do
  login_as( @user, scope: :user )
end
