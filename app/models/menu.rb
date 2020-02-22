class Menu 
    attr_reader :items

    def initialize
        @items = []
    end

    def add_product(pedido)
        @items << pedido
    end
end
    