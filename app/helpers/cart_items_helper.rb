module CartItemsHelper
  def render_item_total_price(cart_item)
    cart_item.total_price(cart_item)
  end
end
