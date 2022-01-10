class Invoice

  def initialize(subtotal)
    @subtotal = subtotal
    @items    = []
  end

  def with_tax
    tax_amount = @subtotal * 0.20
    @subtotal + tax_amount
  end

  def add_item(item)
    @items << item
    @subtotal += item.price
  end

end

class Invoice2
  attr_accessor :subtotal, :items

  def initialize(subtotal)
    self.subtotal = subtotal
    self.items = []
  end

  def with_tax
    tax_amount = self.subtotal * 0.20
    self.subtotal + tax_amount
  end

  def add_item(item)
    self.items << item
    self.subtotal += item.price
  end
end


class Item
  attr_accessor :price

  def initialize(price)
    self.price = price
  end
end

# invoice1 = Invoice.new(100)