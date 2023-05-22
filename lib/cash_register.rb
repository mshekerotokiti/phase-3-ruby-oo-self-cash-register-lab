class CashRegister
    attr_reader :discount
    attr_accessor :total
    attr_reader :items
    def initialize(discount = 20)
        @total=0
        @amounts=[]
        @discount=discount
        @items=[]
    end

    def add_item(item,price,quantity=1)
       quantity.times {@items.push item}
       @amounts.push(quantity*price)
        @total+=price*quantity
    end

    def apply_discount
        self.total=total*(100-@discount)/100
        if @total==0
            "There is no discount to apply."
        else
           "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @amounts.pop
        @total=@amounts.sum
    end
end
 reg=CashRegister.new(40)
 p reg.add_item("sweet",30)
 p  reg.items
