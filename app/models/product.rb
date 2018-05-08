class Product < ApplicationRecord
  validates :title, presence: true
  validates :quantity, numericality: true
  validates :price, numericality: true
  validates :category, presence: true
  validates :image, presence: true

  CATEGORY_CLASS = %w(電腦硬體 週邊設備 辦公室擺設).freeze

  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :image, ImageUploader

  def decrease_products_quantity!(product, cart_item)
    @product = Product.find(product.id)
    decrease_total = cart_item.quantity
    @product.quantity -= decrease_total
    @product.save
  end
end
