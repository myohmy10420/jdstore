module ProductsHelper
  def render_production_image_path(product)
    if product.image.present?
      image_tag(product.image.thumb.url, class: "thumbnail", style: "margin: 20px auto;")
    else
      image_tag("http://placehold.it/200x200&text=No Pic", class: "thumbnail", style: "margin: 20px auto;")
    end
  end
end
