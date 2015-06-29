# language: pt

Funcionalidade: Manter Pizza
  Eu, como dono da pizzaria,
  Quero manter restaurante
  Para ter maior controle das unidades do GepetoHut que existem.

  Dessa forma poderei permitir o cadastro, atualização e fechamanto das 
  unidades de pizzarias.

Cenário: Cadastrar Restaurante com sucesso
  Após o administrador ter feito o login na aplicação e entrado na página inicial
  de restaurantes, ele entra na página de cadastro de um novo restaurante e insere 
  os dados relativos a nova unidade. Ao finalizar o cadastro uma mensagem contendo um 
  resumo da nova pizzaria é apresentada.

  Dado que eu sou administrador
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de restaurantes
  E eu clico e acesso a página de cadastro de restaurantes
  E eu preencho o campo nome GepetoHut: Ceilândia
  E eu preencho o campo de entregadores com 2
  E eu preencho o campo de pizzaiolos com 3
  E eu clico no botão de atualizar restaurante
  Então o sistema deve apresentar as informações relativas ao restaurante

Cenário: Visualizar Restaurante com sucesso
  Após o administrador ter feito o login na aplicação e entrado na página inicial de 
  restaurantes, ele clica no restaurante que deseja visualizar, sendo capaz de enxergar
  as informações relacionadas a essa unidade.

  Dado que eu sou administrador
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de restaurantes
  E eu clico no restaurante de Ceilândia
  Então o sistema deve apresentar as informações relativas a unidade de Ceilândia

Cenário: Listar Restaurantes com sucesso
  Após o adminsitrados ter feito o login na aplicação e entrado na página inicial de 
  restaurantes, ele deve ser capaz de visualizar uma tabela contendo todas as 
  unidades de pizzarias cadastradas.

  Dado que eu sou administrador
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de restaurantes
  Então o sistema deve retonar uma lista contendo todas as unidades cadastradas

Cenário: Fechar Restaurante com sucesso
  Após o administrados ter feito o login na aplicação e entrada na página inicial de 
  restaurantes, ele clica na unidade que deseja fechas e, depois de confirmar o 
  fechamento, não é mais capaz de visualizar a pizzaria deletada na página inicial 
  de pizzas.

  Dado que eu sou administrador
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de restaurantes
  E eu fecho a unidade de Ceilândia
  E eu confirmo o fechamento da unidade de Ceilândia
  Então o sistema deve retonar uma lista contendo todas as unidades cadastradas
  Mas sem a unidade de Ceilândia
