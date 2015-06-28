# PAPÉIS (PERFIS)
#
roles = [ "customer", "manager", "admin" ]
roles.each do |role|
  Role.find_or_create_by( { name: role } )
end

# PIZZAS
#
pizzas = Pizza.create(
  [
    { name: "Alho e Óleo", price: 26.00, is_menu: true },
    { name: "Americana", price: 24.00, is_menu: true },
    { name: "Atum", price: 24.00, is_menu: true },
    { name: "Bacon", price: 22.00, is_menu: true },
    { name: "Baiana", price: 25.00, is_menu: true },
    { name: "Bolonhesa", price: 22.00, is_menu: true },
    { name: "Brasileira", price: 25.00, is_menu: true },
    { name: "Brócolis", price: 21.00, is_menu: true },
    { name: "Calabresa", price: 20.00, is_menu: true },
    { name: "Champignon", price: 25.00, is_menu: true },
    { name: "Frango", price: 21.00, is_menu: true },
    { name: "Frango com Catupiry", price: 25.00, is_menu: true },
    { name: "Lombo", price: 25.00, is_menu: true },
    { name: "Marguerita", price: 22.00, is_menu: true },
    { name: "Milho", price: 21.00, is_menu: true },
    { name: "Mussarela", price: 18.00, is_menu: true },
    { name: "Palmito", price: 25.00, is_menu: true },
    { name: "Portuguesa", price: 25.00, is_menu: true },
    { name: "Vegetariana", price: 22.00, is_menu: true }
  ]
)

# RESTAURANTS
#
restaurants = Restaurant.create(
  [
    { name: "GepetoHut: Taguatinga Sul", qtd_delivery: 5, qtd_pizzaiolo: 5 },
    { name: "GepetoHut: Taguatinga Norte", qtd_delivery: 5, qtd_pizzaiolo: 6 },
    { name: "GepetoHut: Taguatinga Centro", qtd_delivery: 7, qtd_pizzaiolo: 6 }
  ]
)

# USERS
#
users = User.create(
  [
    {
      name: "admin", address: "endereço admin", email: "admin@gepetohut.com", 
      password: "12345678"
    },
    {
      name: "manager", address: "endereço manager", email: "manager@gepetohut.com", 
      password: "12345678"
    },
    {
      name: "customer", address: "endereço customer", email: "customer@gepetohut.com", 
      password: "12345678"
    }
  ]
)

# ADDING ROLES TO USERS
#
admin = User.find_by_name( "admin" )
admin.add_role :admin
admin.remove_role :customer
admin.save!

manager = User.find_by_name( "manager" )
manager.add_role :manager
manager.remove_role :customer
manager.save!

customer = User.find_by_name( "customer" )
customer.add_role :customer
customer.save!
