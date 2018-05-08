class CartsController < ApplicationController
  before_action :check_current_cart!, only: [:checkout]

  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end
  def checkout
    @order = Order.new
  end

  private

  def check_current_cart!
    if current_cart.cart_items.blank?
      flash[:warning] = "尚未購物"
      redirect_to carts_path
    end
  end
end
