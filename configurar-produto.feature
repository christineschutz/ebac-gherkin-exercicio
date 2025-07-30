Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero selecionar tamanho, cor e quantidade
  Para adicionar um produto ao meu carrinho corretamente


  Contexto:
    Dado que estou na página de um produto da EBAC-SHOP


  Cenário: Campos obrigatórios para configurar produto
    Quando seleciono uma cor, tamanho e quantidade
    Então o botão de adicionar ao carrinho deve estar habilitado


  Cenário: Limitar quantidade máxima por compra
    Quando seleciono a quantidade "11"
    Então deve exibir uma mensagem de erro "Quantidade máxima permitida: 10"


  Cenário: Limpar seleção de produto
    Dado que selecionei uma cor, tamanho e quantidade
    Quando clico no botão "limpar"
    Então todas as seleções devem voltar ao estado original
