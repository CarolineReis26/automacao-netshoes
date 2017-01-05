#language: pt

Funcionalidade:  BuscaProduto



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

  @dev
  Cenário: Posso realizar busca de produtos por Filtro
  Quando e tocar na lista de filtro
  E escolher o tipo de filtro
  E tocar no filtro escolhido
  Entao verificar o carregamento do filtro selecionado

  @dev
  Cenário: Posso realizar busca de produtos  Ordenado
  Quando e tocar na lista de ordenar
  E realizar uma escolha
  Entao verificar o carregamento da ordem selecionada

 @promocoes
 Cenário: Posso realizar busca por promocoes
 Dado que estou na home
 Quando tocar na lista
 E escolher a opcao "Promoções"
 Entao espero  exibir as promoçoes disponiveis
