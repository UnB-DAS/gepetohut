# language: pt

Funcionalidade: Manter Funcionário
  Eu, como dono da pizzaria,
  Quero manter funcionário
  Para ter maior controle dos funcionários.

  Dessa forma poderei permitir o cadastro de funcionários pelo gerente e
  Dessa forma poderei permitir a visualização dos dados dos funcionários.

  Além disso, será possível ao gerente deletar o registro de funcionários ou
  mesmo editar os dados do funcionário.

Cenário: Cadastrar Funcinário com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  funcionários, ele entra na página de cadastro de funcionários, insere os 
  dados relativos ao novo funcionário. Ao finalizar o cadastro uma mensagem 
  contendo um resumo do novo funcionário é apresentada.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de funcionários
  E eu clico e acesso a página de cadastro de funcionários
  E eu preencho o campo nome do funcionário com João Santos
  E eu preencho o campo CPF com 575.379.016-00
  E eu preencho o campo rg com 2.977.269
  E eu clico no botão de criação de Cadastrar Dados do Funcionário
  Então o sistema deve apresentar as informações relativas ao funcionário

Cenário: Visualizar Funcionário com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  funcionários, ele clica no funcionário que deseja visualizar, sendo capaz de 
  enxergar as informações relacionadas ao funcionário.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de funcionários
  E eu clico no Funcionário chamado José Silva e Silva
  Então o sistema deve apresentar as informações relativas ao funcionário

Cenário: Listar Funcionários com sucesso
  Após o gerente ter feito o login na aplicação e entrado na página inicial de 
  funcionários, ele deve ser capaz de visualizar uma tabela contendo todos todos os funcionários cadastrados.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de funcionários
  Então o sistema deve retonar uma tabela contendo todos os funcionários cadastrados

Cenário: Deletar Funcionário com sucesso
  Após o gerente ter feito o login na aplicação e entrada na página inicial de 
  funcionários, ele clica no funcionário que deseja remover e, depois de 
  confirmar a deleção, não é mais capaz de visualizar o funcionário deletado 
  na página inicial de funcionários.

  Dado que eu sou gerente
  E eu estou na página inicial da aplicação
  E eu estou logado
  Quando eu entro na página inicial de funcionários
  E eu removo o funcionário José Silva e Silva
  E eu confirmo a deleção do funcionário José Silva e Silva
  Então o sistema deve retonar uma tabela contendo todos os funcionários cadastrados
  Mas sem o funcionário José Silva e Silva
