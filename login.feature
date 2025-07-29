Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos


  Background:
    Given que estou na tela de login da EBAC-SHOP


  Scenario: Login com dados válidos
    When preencho os campos "Usuário" e "Senha" com "usuario@ebac.com.br" e "senha123"
    And clico no botão de login
    Then devo ser redirecionado para a tela de checkout


  Scenario: Login com usuário ou senha inválidos
    When preencho os campos "Usuário" e "Senha" com "usuario@ebac.com.br" e "senhaErrada"
    And clico no botão de login
    Then deve exibir uma mensagem "Usuário ou senha inválidos"


  Scenario: Login com campos obrigatórios em branco
    When deixo os campos "Usuário" e "Senha" em branco
    And clico no botão "Entrar"
    Then deve ser exibida a mensagem "Preencha todos os campos obrigatórios"
