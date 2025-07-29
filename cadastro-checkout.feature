Feature: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra


  Background:
    Given que estou na tela de cadastro da EBAC-SHOP


  Scenario Outline: Cadastro com campos obrigatórios e formato válido
    When preencho os campos nome "<nome>", sobrenome "<sobrenome>", empresa "<empresa>", país "<pais>",
    endereço "<endereco>", complemento "<complemento>", cidade "<cidade>",
    CEP "<cep>", telefone "<telefone>", e email "<email>"
    And clico no botão "Cadastrar"
    Then o sistema deve redirecionar para a tela de pagamento

    Examples:
    | nome   | sobrenome | empresa   | pais   | endereco           | complemento | cidade    | cep        | telefone     | email               
    | José   | Silva     | EBAC Ltda | Brasil | Rua Amarela, 123   | Apto 101    | São Paulo | 01234-567  | 47987654321  | emailinvalido.com   | 
    | Bruno  | Lima      |           | Brasil | Av. Central, 456   |             | Curitiba  | 87654-321  | 123          | brunosememail.com   | 
    |        |           | ABC       |        |                    | Apto 211    |           |            |              |                     | 
    | Ana    | Silva     | EBAC Shop | Brasil | Rua das Flores, 12 | Fundos      | Recife    | 34567-000  | 11999998888  | ana@exemplo.com     | 
  

  Scenario: Cadastro com email inválido
    When preencho o campo "Email" com "emailinvalido.com"
    And clico no botão "Cadastrar"
    Then deve exibir a mensagem de erro "Formato de e-mail inválido"


  Scenario: Cadastro com campos vazios
    When deixo os campos obrigatórios em branco
    And clico no botão "Cadastrar"
    Then deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"


  Scenario: Cadastro com telefone inválido
    When preencho todos os campos obrigatórios corretamente, exceto o telefone, com "123"
    And clico no botão "Cadastrar"
    Then deve ser exibida a mensagem de erro "Telefone inválido: insira um número com DDD válido"


  Scenario: Cadastro realizado com sucesso
    Given que estou na tela de cadastro da EBAC-SHOP
    When preencho os campos:
      nome "Ana", sobrenome "Silva", empresa "EBAC Shop", país "Brasil",
      endereço "Rua das Flores, 12", complemento "Fundos", cidade "Recife",
      CEP "34567-000", telefone "11999998888" e email "ana@exemplo.com"
    And clico no botão "Cadastrar"
    Then o sistema deve redirecionar para a tela de pagamento
