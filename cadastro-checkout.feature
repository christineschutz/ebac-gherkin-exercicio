Feature: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given que estou na tela de cadastro da EBAC-SHOP

  Scenario Outline: Cadastro com campos obrigatórios e formato válido
    When preencho todos os campos obrigatórios:
      | Nome         | Sobrenome | Email              | Telefone     | Endereço         |
      | <nome>       | <sobrenome> | <email>          | <telefone>   | <endereco>       |
    And clico no botão "Cadastrar"
    Then o sistema deve redirecionar para a tela de pagamento

    Examples:
      | nome    | sobrenome | email               | telefone      | endereco              |
      | José    | Silva     | jose@exemplo.com    | 47987654321   | Rua Amarela, 123      |

  Scenario: Cadastro com email inválido
    When preencho o campo "Email" com "emailinvalido.com"
    And clico no botão "Cadastrar"
    Then deve exibir a mensagem de erro "Formato de e-mail inválido"

  Scenario: Cadastro com campos vazios
    When deixo os campos obrigatórios em branco
    And clico no botão "Cadastrar"
    Then deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"
