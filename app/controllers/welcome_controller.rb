class WelcomeController < ApplicationController
  def index
    @products_pop_1to4 = Product.all.order("click_rate DESC").limit(4)
  end
end
