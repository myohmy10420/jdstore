class WelcomeController < ApplicationController
  def index
    @first_and_second_products = Product.where(id: 1..4).order("click_rate DESC")
  end
end
