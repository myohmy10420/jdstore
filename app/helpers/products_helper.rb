module ProductsHelper
  def render_production_image(product)
    if product.image.present?
      image_tag(product.image.thumb.url, class: "thumbnail")
    else
      image_tag("http://placehold.it/200x200&text=No Pic", class: "thumbnail", style: "margin: 20px auto;")
    end
  end
end
