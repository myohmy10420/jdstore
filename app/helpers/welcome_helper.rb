module WelcomeHelper
  def render_product_image_link(product)
    link_to product_path(product) do
      if product.image.present?
        image_tag(product.image.medium.url)
      else
        image_tag("http://placehold.it/400x400&text=No Pic")
      end
    end
  end
end
