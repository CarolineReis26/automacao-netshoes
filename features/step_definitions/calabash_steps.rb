Dado(/^que estou na home$/) do
  touch("* id:'generic_dialog_positive'")
  touch("* id:'button1'")
end

Quando(/^tocar para realizar pesquisa$/) do
  touch("* id:'search_button'")
end

Quando(/^informar o produto$/) do
  produto = 'bolsa'
  enter_text "* id:'search_src_text'", produto
  press_enter_button
end

Quando(/^tocar no produto selecionado$/) do
  touch("* id:'product_name'")
end

Quando(/^tocar em realizar compra$/) do
  touch("* id:'product_name'")
  touch("* id:'buy_button_layout'")
end

Quando(/^adicionar a compra ao carrinho$/) do
  touch("* id:'generic_dialog_positive'")
end

Entao(/^confirmar a inclusão do produto no carrinho$/) do
  touch("* id:'btnCheckout'")
end

Quando(/^tocar no carrinho$/) do
  #aninhamento de steps
  steps %{
    E tocar no produto selecionado
    E tocar em realizar compra
    E adicionar a compra ao carrinho
  }
  touch("* id:'cart_icon'")
end

Quando(/^tocar para remover produto$/) do
  touch("* id:'generic_dialog_positive'") if
              element_exists("* id:'generic_dialog_positive'")
  touch("* id:'ctvCartRemove'")
  touch "* id:'material_dialog_positive'"
end

Entao(/^confirmar a exclusão do produto$/) do
  sleep(0.5)
  fail 'O item não foi excluído' unless element_exists("* id:'empty_view_title'")

end

Quando(/^e tocar na lista de filtro$/) do

end

Quando(/^escolher o tipo de filtro$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^tocar no filtro escolhido$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^verificar o carregamento do filtro selecionado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^e tocar na lista de ordenar$/) do

end

Quando(/^realizar uma escolha$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^verificar o carregamento da ordem selecionada$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Quando(/^tocar na lista$/) do
  touch("* contentDescription:'drawer_open'")
end

Quando(/^escolher a opcao "([^"]*)"$/) do |arg1|
  touch("* id:'menu_item_label' index:3")
end

Entao(/^espero  exibir as promoçoes disponiveis$/) do
  sleep(1)
  element_exists("* id:'banner_image' index:0")
end
