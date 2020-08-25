module Pages
    def visit_page
        @visit ||= VisitSite.new
    end
end