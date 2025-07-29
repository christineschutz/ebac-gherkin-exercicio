Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero selecionar tamanho, cor e quantidade
  Para adicionar um produto ao meu carrinho corretamente


  Background:
    Given que estou na página de um produto da EBAC-SHOP


  Scenario: Campos obrigatórios para configurar produto
    When seleciono uma cor, tamanho e quantidade
    Then o botão de adicionar ao carrinho deve estar habilitado


  Scenario: Limitar quantidade máxima por compra
    When seleciono a quantidade "11"
    Then deve exibir uma mensagem de erro "Quantidade máxima permitida: 10"


  Scenario: Limpar seleção de produto
    Given que selecionei uma cor, tamanho e quantidade
    When clico no botão "limpar"
    Then todas as seleções devem voltar ao estado original
