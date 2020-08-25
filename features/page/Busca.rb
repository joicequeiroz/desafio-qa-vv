class Busca < SitePrism::Page
    element :field_busca, "#strBusca"
    element :btn_busca, "#strBusca"
    element :btn_add, "#btnAdicionarCarrinho"

    def busca_produto(name)
        field_busca.set(name).send_keys :enter
    end

    def confirm_produto(name)
        find('.neemu-breadcrumb-container.nm-dektop-only').text
    end

    def click_produto
        find('li:nth-of-type(1) .nm-product-name').click
        btn_add.click
    end

    def confirm_button
        find('.header > .content-wrapper > a[title="Continuar"]').click
    end

    def concluir_button
        find('a[title="Concluir compra"]').text
    end
end
