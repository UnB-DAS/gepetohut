# PIZZAS
#
pizzas = Pizzas.create(
  [
    { name: "Alho e Óleo", price: 26.00 },
    { name: "Americana", price: 24.00 },
    { name: "Atum", price: 24.00 },
    { name: "Bacon", price: 22.00 },
    { name: "Baiana", price: 25.00 },
    { name: "Bolonhesa", price: 22.00 },
    { name: "Brasileira", price: 25.00 },
    { name: "Brócolis", price: 21.00 },
    { name: "Calabresa", price: 20.00 },
    { name: "Champignon", price: 25.00 },
    { name: "Frango", price: 21.00 },
    { name: "Frango com Catupiry", price: 25.00 },
    { name: "Lombo", price: 25.00 },
    { name: "Marguerita", price: 22.00 },
    { name: "Milho", price: 21.00 },
    { name: "Mussarela", price: 18.00 },
    { name: "Palmito", price: 25.00 },
    { name: "Portuguesa", price: 25.00 },
    { name: "Vegetariana", price: 22.00 }
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
