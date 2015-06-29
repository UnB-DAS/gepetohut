# language: pt

Funcionalidade: Manter Pedido
  Eu, como dono da pizzaria,
  Quero manter pedido
  Para ter maior controle dos pedidos da pizzaria.

  Dessa forma poderei permitir o cadastro, edição, visualização
  e deleção de pedidos.

Cenário: Cadastrar Pedido com sucesso
  Após o cliente ter feito o login na aplicação e entrado na página inicial da 
  pedido, ele entra na página de cadastro de pedidos, insere os dados relativos 
  ao pedido. Ao finalizar o cadastro uma mensagem contendo um 
  resumo do novo pedido é apresentado.

  Dado que eu sou cliente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página de cadastrar pedido
  E eu preencho o campo quantidade com 1 da pizza Americana
  E eu clico no botão de realização de pedido
  Então o sistema deve apresentar as informações relativas ao pedido.

Cenário: Visualizar Pedido com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  pedidos, ele clica no Pedido que deseja visualizar, sendo capaz de enxergar as 
  informações relacionadas ao pedido.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pizzas
  E eu clico no primeiro pedido listado
  Então o sistema deve apresentar as informações relativas a esse pedido.

Cenário: Listar Pedido com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  pedidos, ele deve ser capaz de visualizar uma tabela contendo todos os 
  pedidos registrados.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pedidos
  Então o sistema deve retonar uma tabela contendo todas os pedidos

Cenário: Cancelar Pedido com sucesso
  Após o gerente ter feito o login na aplicação e entrada na página inicial de 
  pedidos, ele clica no que deseja cancelar e, depois de confirmar o 
  cancelamento, não é mais capaz de visualizar o pedido cancelado
  na página inicial de pedidos.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pedidos
  E eu cancelo o primeiro pedido
  E eu confirmo o cancelamento desse pedido
  Então o sistema deve retonar uma tabela contendo todos os pedidos
  Mas sem a pedido cancelado.
