#language:pt

Funcionalidade: Manter Clientes
  Eu, como cliente,
  Quero manter meus registros
  Para obter acesso aos serviços fornecidos.

  Dessa forma poderei me cadastrar e
  Dessa forma poderei editar meu cadastro e
  Dessa forma exclui meu cadastro e
  Dessa forma visualizar meu cadastro.

Cenário: Cadastrar Cliente
   Ao entrar na página inicial o usuário irá selecionar a opção de cadastro.
   Após selecionar a opção de cadastro o usuário irá preencher o formulario 
   com suas informações pessoais como: nome , endereço , email , telefone.

   Dado que o cliente está na pagina de cadastro.
   Quando ele preencher os campos do formulario corretamente.
   Então o sistema deve apresentar uma mensagem de sucesso do cadastro.

   Dado que o cliente está na pagina de cadastro.
   Quando ele preencher com email já existente
   Então o sistema deve apresentar uma mensagem de erro de usuário ja cadastrado.

   Dado que o cliente está na pagina de cadastro.
   Quando ele preencher incompletamente o formulario.
   Então o sistema deve apresentar uma mensagem de erro de campo incompleto.

   Dado que o cliente está na pagina de cadastro.
   Quando ele preencher com um formato não válido de email.
   Então o sistema deve apresentar uma mensagem de erro de formato inválido de email.




  