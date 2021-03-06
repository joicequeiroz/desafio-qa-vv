Dado('que eu acesso o site de compras') do
    visit_page.visit_site
  end
  
  Quando('realizo a busca pelo produto {produto}') do |produto|
    busca_produto.busca_produto(produto)
  end
  
  Então('eu vejo no resultado da consulta {resultado}') do |resultado|
    @confirm_produto = busca_produto.confirm_produto(resultado)
    expect(@confirm_produto).to eql("Você buscou por Iphone XR")
  end
  
  Então('seleciono o item ao meu carrinho de compras') do
    busca_produto.click_produto
    busca_produto.confirm_button
  end
  
  Então('o produto e adicionado ao minha lista') do
    expect(busca_produto.concluir_button).to be_truthy
  end
  