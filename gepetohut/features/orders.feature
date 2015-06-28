# language: pt

Funcionalidade: Fazer Pedido
Eu, como cliente
Quero realizar um pedido online
Para efetuar pedido sem necessidade de ir até uma pizzaria.

Dessa forma, será possível ao cliente fazer um pedido de pizza e
Dessa forma, será possível ao cliente ver os pedidos de pizza feito.

Cenário: Cadastrar Pedido de Pizza
Após o cliente ter feito login na aplicação e entrado na página inicial de 
pizzas, ele entre em Pedidos, indere a quantidade de pizzas que deseja.
Ao finalizar o pedido, ele visualiza as informações e retorna a página inicial.

  Dado que eu sou cliente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu clico em Pedidos
  E eu preencho a quantidade de pizza de Americana com quantidade 1
  E eu clico no botão de Realizar Pedido
  Então o sistema deve apresentar as informações relativas ao pedido

