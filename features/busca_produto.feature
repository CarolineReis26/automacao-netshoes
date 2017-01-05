#language: pt

Funcionalidade:  BuscaProduto


   @buscaproduto
  Cenário: Posso realizar busca de  produto
  Dado que estou na home
  Quando tocar para realizar pesquisa
  E informar o produto
  Quando tocar no produto selecionado
  E tocar em realizar compra
  E adicionar a compra ao carrinho
  Entao confirmar a inclusão do produto no carrinho

  @clear_app_data
  Cenário: Posso desistir do produto adicionado no carrinho
  Dado que estou na home
  Quando tocar para realizar pesquisa
  E informar o produto
  Quando tocar no carrinho
  E tocar para remover produto
  Entao confirmar a exclusão do produto

 @promocoes
 @clear_app_data
 Cenário: Posso realizar busca por promocoes
 Dado que estou na home
 Quando tocar na lista
 E escolher a opcao "Promoções"
 Entao espero  exibir as promoçoes disponiveis
