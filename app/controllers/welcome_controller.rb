class WelcomeController < ApplicationController
  def index
    @products_pop_1to4 = Product.where(id: 1..4).order("click_rate DESC")
  end
end
