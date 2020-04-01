
class CashRegister
    attr_accessor :total, :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(item, price, quantity = 0)
         @price = price
         @total += quantity * price
          items << item

    end

    def apply_discount
      if discount > 0
        discounted_price = (price * discount)/100
        total -= discounted_price
        return " the total price after the discount is #{discounted_price}."
      else
        return " There is no discount to apply. "
    end
end

    def void_last_transaction
    total -= price
    end


end