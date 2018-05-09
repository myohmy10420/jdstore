class ProductsController < ApplicationController

  def index
    if params["format"] == "全部" || !params["format"]
      category_products = Product.all
    else
      category_products = Product.where(:category => params["format"])
    end
    @q = category_products.ransack(params[:q])
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
      flash[:notice] = "你已經成功將 #{@product.title} 加入購物車"
    else
      flash[:warning] = "你的購物車内已有此物品"
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
