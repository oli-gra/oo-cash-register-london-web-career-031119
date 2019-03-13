require 'pry'

class CashRegister
  
  attr_accessor :discount, :total
  
 
def initialize (discount=0)
  @total = 0
  @discount = discount
end

def add_item (item,price,quantity=1)
  @total += price * quantity
  @items << item
end

def items
  @items
end

def apply_discount
  if @discount > 0
    @total = @total - (@total * @discount/100)
    "After the discount, the total comes to $#{@total}."
  else 
    "There is no discount to apply."
  end
end

end