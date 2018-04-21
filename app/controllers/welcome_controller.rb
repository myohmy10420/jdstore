class WelcomeController < ApplicationController
  def index
    @products_id_1to4 = Product.where(id: 1..20).order("click_rate DESC")
  end
end
