# language: pt

Funcionalidade: Manter Pizza
  Eu, como dono da pizzaria,
  Quero manter pizza
  Para ter maior controle dos tipos de pizza que comercializo.

  Dessa forma poderei permitir o cadastro de pizzas pelo gerente e
  Dessa forma poderei permitir a visualização das pizzas, tanto pelos
  funcionários quanto pelos clientes.

  Além disso, será possível ao gerente deletar um tipo de pizza ou mesmo editar
  um tipo de pizza.

Cenário: Cadastrar Pizza com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  pizzas, ele entra na página de cadastro de pizzas, insere os dados relativos 
  ao novo sabor de pizza. Ao finalizar o cadastro uma mensagem contendo um 
  resumo da nova pizza é apresentado, contendo: nome e preço da nova pizza.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pizzas
  E eu clico e acesso a página de cadastro de pizzas
  E eu preencho o campo nome da pizza com Calabresa
  E eu preencho o campo preço com 25.90
  E eu clico no botão de criação de pizza
  Então o sistema deve apresentar as informações relativas à pizza

Cenário: Visualizar Pizza com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  pizzas, ele clica na Pizza que deseja visualizar, sendo capaz de enxergar as 
  informações relacionadas à Pizza, como o nome e seu preço.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pizzas
  E eu clico na Pizza chamada Calabresa
  Então o sistema deve apresentar as informações relativas à pizza

Cenário: Listar Pizzas com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  pizzas, ele deve ser capaz de visualizar uma tabela contendo todos os 
  sabores de pizza disponíveis.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pizzas
  Então o sistema deve retonar uma tabela contendo todas as pizzas

Cenário: Deletar Pizza com sucesso
  Após o gerente ter feito o login na aplicação e entrada na página inicial de 
  pizzas, ele clica na Pizza que deseja remover e, depois de confirmar a 
  deleção, não é mais capaz de visualizar a pizza deletada na página inicial 
  de pizzas.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de pizzas
  E eu removo a pizza Calabresa
  E eu confirmo a deleção da pizza de Calabresa
  Então o sistema deve retonar uma tabela contendo todas as pizzas
  Mas sem a pizza de Calabresa
