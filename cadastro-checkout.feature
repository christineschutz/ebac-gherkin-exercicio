Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra


  Contexto:
    Dado que estou na tela de cadastro da EBAC-SHOP


  Esquema do Cenário: Validação de cadastro com dados variados
    Quando preencho os campos nome "<nome>", sobrenome "<sobrenome>", empresa "<empresa>", país "<pais>",
    endereço "<endereco>", complemento "<complemento>", cidade "<cidade>",
    CEP "<cep>", telefone "<telefone>", e email "<email>"
    E clico no botão "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
    | nome   | sobrenome | empresa   | pais   | endereco           | complemento | cidade    | cep        | telefone     | email               | mensagem                                           |
    | José   | Silva     | EBAC Ltda | Brasil | Rua Amarela, 123   | Apto 101    | São Paulo | 01234-567  | 47987654321  | emailinvalido.com   | Formato de e-mail inválido                         |
    | Bruno  | Lima      |           | Brasil | Av. Central, 456   |             | Curitiba  | 87654-321  | 123          | brunosememail.com   | Telefone inválido: insira um número com DDD válido |
    |        |           | ABC       |        |                    | Apto 211    |           |            |              |                     | Preencha todos os campos obrigatórios              |
    | Ana    | Silva     | EBAC Shop | Brasil | Rua das Flores, 12 | Fundos      | Recife    | 34567-000  | 11999998888  | ana@exemplo.com     | Cadastro realizado com sucesso                     |
  