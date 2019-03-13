require 'pry'

class CashRegister
  
  attr_accessor :discount, :total

def initialize (discount=0)
  @total = 0
  @discount = discount
end

def add_item (item,price,quantity=1)
  @total += price * quantity
end

def apply_discount
  if @discount > 0
    @total = @total * (@discount)
    puts "After the discount, the total comes to #{@total}."
  else 
    puts ""
  end
end

end