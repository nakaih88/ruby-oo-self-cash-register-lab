class  CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
        @last_transaction_name = 0
    end

  
  
    def add_item(title, price, quantity = 1)
        i = 0
        while i < quantity do
            @items << title
            @last_transaction = price * quantity
            @last_transaction_name = title
            i += 1
        end
        self.total += price * quantity
    end


    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        elsif @total = @total * @discount / 25
        return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        items.delete(@last_transaction_name)
        if items.empty?
            self.total = 0.0
        else
            self.total -= @last_transaction
        end
    end

end