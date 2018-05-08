class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def total_price(cart_item)
    production = Product.find(cart_item.product_id)
    production.price*cart_item.quantity
  end
end
