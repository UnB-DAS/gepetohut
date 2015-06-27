# language: pt

Funcionalidade: Manter Usuário
  Eu, como dono da pizzaria,
  Quero manter usuários
  Para guardar dados dos usuários permitindo maior controle deles.

  Dessa forma poderei permitir o cadastro de novos usuários pelo próprios
  usuários e Dessa forma poderei permitir a visualização dos usuários
  cadastrados, tanto pelo administrador quanto pelos gerentes.

Cenário: Cadastrar Usuário com sucesso
  Na página inicial da aplicação o usuário entra na página de cadastro, insere
  seus dados e, ao finalizar o cadastro ele é redirecionado para a página
  iniciald a aplicação.

  Dado que eu sou cliente
  E eu estou na página inicial da aplicação
  Quando eu entro na página de cadastro de usuário
  E eu preencho o campo nome com José
  E eu preencho o campo endereço com Taguatinga Norte
  E eu preencho o campo email com jose@gmail.com
  E eu preencho o campo senha com 12345678
  E eu preencho o campo de confirmação de senha com 12345678
  E eu clico no botão Cadastrar
  Então o sistema deve retornar para a página inicial da aplicação
  E apresentar na barra superior uma mensagem de boas vindas

Cenário: Visualizar Usuário com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de
  usuários, ele clica no usuário que deseja visualizar, sendo capaz de
  enxergar as informações relacionadas ao usuário, como nome e email.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de usuários
  E eu clico no usuário chamado customer
  Então o sistema deve apresentar as informações relativas ao usuário

Cenário: Listar Usuários com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  usuários, ele deve ser capaz de visualizar uma tabela contendo todos os 
  usuários cadastrados.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de usuários
  Então o sistema deve retonar uma tabela contendo todos os usuários
