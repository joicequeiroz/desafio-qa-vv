module Pages
    def visit_page
        @visit ||= VisitSite.new
    end

    def busca_produto
        @busca_produto ||= Busca.new
    end
end