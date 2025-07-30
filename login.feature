Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos


  Contexto:
    Dado que estou na tela de login da EBAC-SHOP


  Cenário: Login com dados válidos
    Quando preencho os campos "Usuário" e "Senha" com "usuario@ebac.com.br" e "senha123"
    E clico no botão de login
    Então devo ser redirecionado para a tela de checkout


  Cenário: Login com usuário ou senha inválidos
    Quando preencho os campos "Usuário" e "Senha" com "usuario@ebac.com.br" e "senhaErrada"
    E clico no botão de login
    Então deve exibir uma mensagem "Usuário ou senha inválidos"


  Cenário: Login com campos obrigatórios em branco
    Quando deixo os campos "Usuário" e "Senha" em branco
    E clico no botão "Entrar"
    Então deve ser exibida a mensagem "Preencha todos os campos obrigatórios"
