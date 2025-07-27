Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Background:
    Given que estou na tela de login da EBAC-SHOP

  Scenario: Login com dados válidos
    When insiro o usuário "usuario@ebac.com.br"
    And insiro a senha "senha123"
    And clico no botão de login
    Then deve ser redirecionado para a tela de checkout

  Scenario: Login com usuário ou senha inválidos
    When insiro o usuário "usuario@ebac.com.br"
    And insiro a senha "senhaErrada"
    And clico no botão de login
    Then deve exibir uma mensagem "Usuário ou senha inválidos"
