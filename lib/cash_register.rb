class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += quantity * price
    @items += [title] * quantity
    @price = price
    @quantity = quantity
  end

  def apply_discount
    if @discount != 0
      @total = @total * (100-discount)/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price * @quantity
  end

end