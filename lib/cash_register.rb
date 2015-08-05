# Write your code here.

require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  # def total
  #   @total = total
  # end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount
      discount_applied = @total - (@total * (@discount.to_f / 100))
      @total = discount_applied.to_i
      # binding.pry
      "After the discount, the total comes to $#{discount_applied.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end
end