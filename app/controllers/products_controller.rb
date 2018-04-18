class ProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def show
    @product = Product.friendly.find(params[:id])
    @product.click_rate += 1;
    @product.save
  end

  def add_to_cart
    @product = Product.friendly.find(params[:id])

    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back
  end

  private

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?

    @search_product_by_title = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    { :title_cont => query_string }
  end

end
